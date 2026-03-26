import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import '../../../core/models/student.dart';
import '../../../core/services/student_service.dart';
import '../../../core/services/classroom_service.dart';
import '../../../core/theme/app_theme.dart';
import 'student_profile_screen.dart';

class StudentScreen extends StatefulWidget {
  final String classroomId;
  final String classroomName;

  const StudentScreen({
    super.key,
    required this.classroomId,
    required this.classroomName,
  });

  @override
  State<StudentScreen> createState() => _StudentScreenState();
}

class _StudentScreenState extends State<StudentScreen> {
  final _nameController = TextEditingController();
  final _ageController = TextEditingController();
  final _guardianNameController = TextEditingController();
  final _guardianPhoneController = TextEditingController();
  final _notesController = TextEditingController();

  final _studentService = StudentService();
  final _classroomService = ClassroomService();

  String _selectedGender = 'other';
  List<Map<String, dynamic>> _allClassrooms = [];
  String? _selectedTransferClassroomId;
  String _selectedLevel = 'beginner';
  DateTime? _selectedDOB;
  List<Student> _students = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadStudents();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _ageController.dispose();
    _guardianNameController.dispose();
    _guardianPhoneController.dispose();
    _notesController.dispose();
    super.dispose();
  }

  Future<void> _loadStudents() async {
    if (!mounted) return;
    setState(() => _isLoading = true);
    try {
      final students =
      await _studentService.getStudentsByClassroom(widget.classroomId);
      final classrooms = await _classroomService.getClassrooms();
      if (!mounted) return;
      setState(() {
        _students = students;
        _allClassrooms = classrooms;
        _isLoading = false;
      });
    } catch (e) {
      if (!mounted) return;
      setState(() => _isLoading = false);
    }
  }

  // ── Add student ───────────────────────────────────────────────────────────
  void _showAddStudentSheet() {
    _nameController.clear();
    _ageController.clear();
    _guardianNameController.clear();
    _guardianPhoneController.clear();
    _notesController.clear();
    _selectedLevel = 'beginner';
    _selectedGender = 'other';
    _selectedTransferClassroomId = null;
    _showStudentSheet(title: 'Add Student', subtitle: 'Adding to ${widget.classroomName}');
  }

  // ── Edit student ──────────────────────────────────────────────────────────
  void _showEditStudentSheet(Student student) {
    _nameController.text = student.name;
    _ageController.text = student.age.toString();
    _guardianNameController.text = student.guardianName ?? '';
    _guardianPhoneController.text = student.guardianPhone ?? '';
    _notesController.text = student.notes ?? '';
    _selectedGender = student.gender ?? 'other'; // ← FIXED: null-safe assignment
    _selectedTransferClassroomId = null;
    _selectedLevel = student.level;
    _selectedDOB = student.dateOfBirth;
    _showStudentSheet(
      title: 'Edit Student',
      subtitle: 'Editing ${student.name}',
      existingStudent: student,
    );
  }

  // ── Shared bottom sheet for add/edit ──────────────────────────────────────
  void _showStudentSheet({
    required String title,
    required String subtitle,
    Student? existingStudent,
  }) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (ctx) => Padding(
        padding: EdgeInsets.only(bottom: MediaQuery.of(ctx).viewInsets.bottom),
        child: Container(
          padding: const EdgeInsets.fromLTRB(24, 20, 24, 32),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
          ),
          child: StatefulBuilder(
            builder: (context, setModalState) => SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Handle bar
                  Center(
                    child: Container(
                      width: 40, height: 4,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(title,
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: AppTheme.textPrimary)),
                  const SizedBox(height: 4),
                  Text(subtitle,
                      style: const TextStyle(
                          color: AppTheme.textSecondary, fontSize: 14)),
                  const SizedBox(height: 20),

                  // ── Basic info ─────────────────────────────────────────
                  _ModalField(
                    controller: _nameController,
                    label: 'Full Name',
                    icon: Icons.person_outline_rounded,
                    textCapitalization: TextCapitalization.words,
                  ),
                  const SizedBox(height: 12),
                  _ModalField(
                    controller: _ageController,
                    label: 'Age',
                    icon: Icons.cake_outlined,
                    keyboardType: TextInputType.number,
                  ),
                  const SizedBox(height: 12),

                  // ── Date of Birth ──────────────────────────────────────
                  GestureDetector(
                    onTap: () async {
                      final picked = await showDatePicker(
                        context: context,
                        initialDate: _selectedDOB ??
                            DateTime.now().subtract(
                                const Duration(days: 365 * 6)),
                        firstDate: DateTime(2000),
                        lastDate: DateTime.now(),
                        helpText: 'Select Date of Birth',
                        builder: (context, child) => Theme(
                          data: Theme.of(context).copyWith(
                            colorScheme: const ColorScheme.light(
                              primary: AppTheme.primary,
                            ),
                          ),
                          child: child!,
                        ),
                      );
                      if (picked != null) {
                        setModalState(() => _selectedDOB = picked);
                      }
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 14, vertical: 14),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          const Icon(Icons.calendar_today_outlined,
                              size: 20, color: AppTheme.textSecondary),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Text(
                              _selectedDOB == null
                                  ? 'Date of Birth (optional)'
                                  : '${_selectedDOB!.day}/${_selectedDOB!.month}/${_selectedDOB!.year}',
                              style: TextStyle(
                                fontSize: 14,
                                color: _selectedDOB == null
                                    ? Colors.grey.shade500
                                    : AppTheme.textPrimary,
                              ),
                            ),
                          ),
                          if (_selectedDOB != null)
                            GestureDetector(
                              onTap: () =>
                                  setModalState(() => _selectedDOB = null),
                              child: Icon(Icons.close_rounded,
                                  size: 18,
                                  color: AppTheme.textSecondary
                                      .withValues(alpha: 0.6)),
                            ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text('Gender',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: AppTheme.textSecondary)),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      for (final g in [
                        ('male', '👦 Male'),
                        ('female', '👧 Female'),
                        ('other', '🧒 Other'),
                      ])
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 6),
                            child: GestureDetector(
                              onTap: () => setModalState(
                                      () => _selectedGender = g.$1),
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 200),
                                padding:
                                const EdgeInsets.symmetric(vertical: 10),
                                decoration: BoxDecoration(
                                  color: _selectedGender == g.$1
                                      ? AppTheme.primary.withValues(alpha: 0.1)
                                      : Colors.grey.shade100,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: _selectedGender == g.$1
                                        ? AppTheme.primary
                                        : Colors.transparent,
                                    width: 1.5,
                                  ),
                                ),
                                child: Text(
                                  g.$2,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: _selectedGender == g.$1
                                        ? AppTheme.primary
                                        : AppTheme.textSecondary,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                  const SizedBox(height: 12),

                  // ── Level ──────────────────────────────────────────────
                  const Text('Phonics Level',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: AppTheme.textSecondary)),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 6,
                    runSpacing: 6,
                    children: [
                      'beginner',
                      'elementary',
                      'intermediate',
                      'upper',
                      'secondary',
                      'senior',
                    ].map((level) => _LevelToggle(
                      level: level,
                      selected: _selectedLevel == level,
                      onTap: () =>
                          setModalState(() => _selectedLevel = level),
                    )).toList(),
                  ),
                  const SizedBox(height: 12),

                  // ── Guardian info ──────────────────────────────────────
                  _ModalField(
                    controller: _guardianNameController,
                    label: 'Guardian Name (optional)',
                    icon: Icons.family_restroom_rounded,
                    textCapitalization: TextCapitalization.words,
                  ),
                  const SizedBox(height: 12),
                  _ModalField(
                    controller: _guardianPhoneController,
                    label: 'Guardian Phone (optional)',
                    icon: Icons.phone_outlined,
                    keyboardType: TextInputType.phone,
                  ),
                  const SizedBox(height: 12),

                  // ── Transfer classroom (edit only) ─────────────────────
                  if (existingStudent != null && _allClassrooms.length > 1) ...[
                    const Text('Move to Classroom',
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: AppTheme.textSecondary)),
                    const SizedBox(height: 8),
                    DropdownButtonFormField<String>(
                      initialValue: _selectedTransferClassroomId ?? // ← FIXED: was `value`
                          existingStudent.classroomId,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12)),
                        prefixIcon:
                        const Icon(Icons.class_outlined, size: 20),
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 14, vertical: 12),
                      ),
                      items: _allClassrooms
                          .map((c) => DropdownMenuItem<String>(
                        value: c['id'] as String,
                        child: Text(c['name'] as String),
                      ))
                          .toList(),
                      onChanged: (val) => setModalState(
                              () => _selectedTransferClassroomId = val),
                    ),
                    const SizedBox(height: 12),
                  ],

                  // ── Notes ──────────────────────────────────────────────
                  _ModalField(
                    controller: _notesController,
                    label: 'Teacher Notes (optional)',
                    icon: Icons.notes_rounded,
                    maxLines: 3,
                  ),
                  const SizedBox(height: 20),

                  // ── Save button ────────────────────────────────────────
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppTheme.primary,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                    ),
                    onPressed: () async {
                      final name = _nameController.text.trim();
                      final age =
                          int.tryParse(_ageController.text.trim()) ?? 0;
                      if (name.isEmpty) return;
                      Navigator.pop(context);

                      if (existingStudent != null) {
                        final targetClassroom = _selectedTransferClassroomId ??
                            existingStudent.classroomId;
                        final updated = Student(
                          id: existingStudent.id,
                          name: name,
                          age: age,
                          classroomId: targetClassroom,
                          level: _selectedLevel,
                          createdAt: existingStudent.createdAt,
                          gender: _selectedGender,
                          dateOfBirth: _selectedDOB,
                          guardianName:
                          _guardianNameController.text.trim().isEmpty
                              ? null
                              : _guardianNameController.text.trim(),
                          guardianPhone:
                          _guardianPhoneController.text.trim().isEmpty
                              ? null
                              : _guardianPhoneController.text.trim(),
                          notes: _notesController.text.trim().isEmpty
                              ? null
                              : _notesController.text.trim(),
                        );
                        await _studentService.updateStudent(updated);
                      } else {
                        final student = Student(
                          id: const Uuid().v4(),
                          name: name,
                          age: age,
                          classroomId: widget.classroomId,
                          level: _selectedLevel,
                          createdAt: DateTime.now(),
                          gender: _selectedGender,
                          dateOfBirth: _selectedDOB,
                          guardianName:
                          _guardianNameController.text.trim().isEmpty
                              ? null
                              : _guardianNameController.text.trim(),
                          guardianPhone:
                          _guardianPhoneController.text.trim().isEmpty
                              ? null
                              : _guardianPhoneController.text.trim(),
                          notes: _notesController.text.trim().isEmpty
                              ? null
                              : _notesController.text.trim(),
                        );
                        await _studentService.addStudent(student);
                      }
                      await _loadStudents();
                    },
                    child: Text(
                        existingStudent != null ? 'Save Changes' : 'Add Student',
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700)),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // ── Delete student ────────────────────────────────────────────────────────
  Future<void> _deleteStudent(Student student) async {
    final confirm = await showDialog<bool>(
      context: context,
      builder: (_) => AlertDialog(
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: const Text('Delete Student'),
        content: Text(
            'Remove ${student.name}? All their assessments will also be deleted.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: AppTheme.danger,
                foregroundColor: Colors.white),
            onPressed: () => Navigator.pop(context, true),
            child: const Text('Delete'),
          ),
        ],
      ),
    );
    if (confirm == true) {
      await _studentService.deleteStudent(student.id);
      await _loadStudents();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.surface,
      body: CustomScrollView(
        slivers: [
          // ── App Bar ───────────────────────────────────────────────────
          SliverAppBar(
            expandedHeight: 100,
            pinned: true,
            backgroundColor: AppTheme.surface,
            scrolledUnderElevation: 0,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios_new_rounded,
                  color: AppTheme.textPrimary, size: 20),
              onPressed: () => Navigator.pop(context),
            ),
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: const EdgeInsets.fromLTRB(56, 0, 20, 16),
              title: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.classroomName,
                      style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: AppTheme.textPrimary)),
                  Text('${_students.length} students',
                      style: const TextStyle(
                          fontSize: 12, color: AppTheme.textSecondary)),
                ],
              ),
              background: Container(color: AppTheme.surface),
            ),
          ),

          // ── Body ──────────────────────────────────────────────────────
          if (_isLoading)
            const SliverFillRemaining(
              child: Center(child: CircularProgressIndicator()),
            )
          else if (_students.isEmpty)
            SliverFillRemaining(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(24),
                      decoration: BoxDecoration(
                        color: AppTheme.primary.withValues(alpha: 0.08),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(Icons.people_outline_rounded,
                          size: 48, color: AppTheme.primary),
                    ),
                    const SizedBox(height: 20),
                    const Text('No students yet',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: AppTheme.textPrimary)),
                    const SizedBox(height: 8),
                    const Text('Tap + to add your first student',
                        style: TextStyle(color: AppTheme.textSecondary)),
                  ],
                ),
              ),
            )
          else
            SliverPadding(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 100),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                      (context, index) {
                    final student = _students[index];
                    return Dismissible(
                      key: Key(student.id),
                      direction: DismissDirection.endToStart,
                      confirmDismiss: (_) async {
                        final confirm = await showDialog<bool>(
                          context: context,
                          builder: (_) => AlertDialog(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            title: const Text('Delete Student'),
                            content: Text(
                                'Remove ${student.name}? All their assessments will also be deleted.'),
                            actions: [
                              TextButton(
                                onPressed: () =>
                                    Navigator.pop(context, false),
                                child: const Text('Cancel'),
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: AppTheme.danger,
                                    foregroundColor: Colors.white),
                                onPressed: () =>
                                    Navigator.pop(context, true),
                                child: const Text('Delete'),
                              ),
                            ],
                          ),
                        );
                        return confirm ?? false;
                      },
                      onDismissed: (_) async {
                        await _studentService.deleteStudent(student.id);
                        await _loadStudents();
                      },
                      background: Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                          color: AppTheme.danger,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        alignment: Alignment.centerRight,
                        padding: const EdgeInsets.only(right: 20),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.delete_outline_rounded,
                                color: Colors.white, size: 24),
                            SizedBox(height: 4),
                            Text('Delete',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w600)),
                          ],
                        ),
                      ),
                      child: _StudentCard(
                        student: student,
                        onTap: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) =>
                                  StudentProfileScreen(student: student),
                            ),
                          );
                          _loadStudents();
                        },
                        onEdit: () => _showEditStudentSheet(student),
                        onDelete: () => _deleteStudent(student),
                      ),
                    );
                  },
                  childCount: _students.length,
                ),
              ),
            ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _showAddStudentSheet,
        backgroundColor: AppTheme.primary,
        foregroundColor: Colors.white,
        elevation: 4,
        icon: const Icon(Icons.person_add_rounded),
        label: const Text('Add Student',
            style: TextStyle(fontWeight: FontWeight.w600)),
      ),
    );
  }
}

// ── Student card ──────────────────────────────────────────────────────────────
class _StudentCard extends StatelessWidget {
  final Student student;
  final VoidCallback onTap;
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  const _StudentCard({
    required this.student,
    required this.onTap,
    required this.onEdit,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Material(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(16),
          child: Container(
            padding: const EdgeInsets.fromLTRB(14, 12, 8, 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: Colors.grey.shade100),
            ),
            child: Row(
              children: [
                NameAvatar(name: student.name, radius: 24, fontSize: 18),
                const SizedBox(width: 14),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(student.name,
                          style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: AppTheme.textPrimary)),
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          LevelBadge(level: student.level),
                          const SizedBox(width: 8),
                          Text('Age ${student.age}',
                              style: const TextStyle(
                                  fontSize: 12,
                                  color: AppTheme.textSecondary)),
                        ],
                      ),
                    ],
                  ),
                ),
                PopupMenuButton<String>(
                  icon: Icon(Icons.more_vert_rounded,
                      color: Colors.grey.shade400, size: 20),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  onSelected: (value) {
                    if (value == 'edit') onEdit();
                    if (value == 'delete') onDelete();
                  },
                  itemBuilder: (_) => [
                    const PopupMenuItem(
                      value: 'edit',
                      child: Row(
                        children: [
                          Icon(Icons.edit_outlined,
                              size: 18, color: AppTheme.primary),
                          SizedBox(width: 10),
                          Text('Edit'),
                        ],
                      ),
                    ),
                    PopupMenuItem(
                      value: 'delete',
                      child: Row(
                        children: [
                          const Icon(Icons.delete_outline_rounded,
                              size: 18, color: AppTheme.danger),
                          const SizedBox(width: 10),
                          Text('Delete',
                              style:
                              TextStyle(color: AppTheme.danger)),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ── Modal text field ──────────────────────────────────────────────────────────
class _ModalField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final IconData icon;
  final TextInputType? keyboardType;
  final TextCapitalization textCapitalization;
  final int maxLines;

  const _ModalField({
    required this.controller,
    required this.label,
    required this.icon,
    this.keyboardType,
    this.textCapitalization = TextCapitalization.none,
    this.maxLines = 1,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: keyboardType,
      textCapitalization: textCapitalization,
      maxLines: maxLines,
      style: const TextStyle(fontSize: 15),
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(icon, color: AppTheme.primary, size: 20),
        filled: true,
        fillColor: AppTheme.surface,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.grey.shade200),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.grey.shade200),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppTheme.primary, width: 2),
        ),
      ),
    );
  }
}

// ── Level toggle button ───────────────────────────────────────────────────────
class _LevelToggle extends StatelessWidget {
  final String level;
  final bool selected;
  final VoidCallback onTap;

  const _LevelToggle({
    required this.level,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final color = AppTheme.levelColor(level);
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: selected ? color.withValues(alpha: 0.12) : Colors.grey.shade50,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: selected ? color : Colors.grey.shade200,
            width: selected ? 1.5 : 1,
          ),
        ),
        child: Center(
          child: Text(
            level[0].toUpperCase() + level.substring(1),
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: selected ? color : AppTheme.textSecondary,
            ),
          ),
        ),
      ),
    );
  }
}