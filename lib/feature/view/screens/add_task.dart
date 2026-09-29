import 'package:flutter/material.dart';

class AddTaskScreen extends StatefulWidget {
  const AddTaskScreen({super.key});

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  // تعريف الـ Controllers للحقول
  final TextEditingController titleTask = TextEditingController();
  final TextEditingController desTask = TextEditingController();

  @override
  void dispose() {
    titleTask.dispose();
    desTask.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Add  New Contact",
        style: TextStyle(
          fontSize: 25,
          color: Colors.white,
        ),),
      ),
      backgroundColor: Colors.black,
      body:
      
      Padding(
        
        padding: const EdgeInsets.all(16.0),
        child: Column(
          
          
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // حقل الاسم أو عنوان المهمة
            CustomTextFormField(
              
              label: "Name",
              hint: "Enter Name",
              controller: titleTask,
            ),
            const SizedBox(height: 16),
            
            // حقل رقم الهاتف أو التفاصيل
            CustomTextFormField(
              label: "Phone Number",
              hint: "Enter Phone Number",
              controller: desTask,
            ),
            const SizedBox(height: 16),
            
            // عنوان جانب القائمة المنسدلة
            const SizedBox(height: 24),
            CustomMaterialButton(
              text: "Save",
              onPressed: () async {
                // add save logic here
              },
            ),
          ],
        ),
      ),
    );
  }
}

// نموذج مبسط لـ CustomTextFormField إذا لم يكن جاهزاً لديك في مشروعك
class CustomTextFormField extends StatelessWidget {
  final String label;
  final String hint;
  final TextEditingController controller;

  const CustomTextFormField({
    super.key,
    required this.label,
    required this.hint,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: const TextStyle(color: Colors.white),
      cursorColor: Colors.white,
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        labelStyle: const TextStyle(color: Colors.white70),
        hintStyle: const TextStyle(color: Colors.grey),
        filled: true,
        fillColor: Colors.white.withValues(alpha: 0.08),
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white38),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white38),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue),
        ),
      ),
    );
  }
}

class CustomMaterialButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;

  const CustomMaterialButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.color = Colors.blue,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: MaterialButton(
        onPressed: onPressed,
        color: color,
        textColor: Colors.white,
        height: 50,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}