import 'dart:io';

void main() {
  // Passing grades and weights
  double passingGradeThreshold = 75.0;
  double assignmentWeight = 0.2;
  double midtermWeight = 0.3;
  double finalExamWeight = 0.5;

  // Student Name
  print("Student Name:");
  String? studentNameInput = stdin.readLineSync();
  if (studentNameInput == null || studentNameInput.isEmpty) {
    print("INVALID INPUT!!! Student name cannot be empty.");
    return;
  }
  String studentName = studentNameInput;

  // Input score assignment
  double assignmentScore = 0;
  print("Enter your Assignment Score: ");
  String? assignmentInput = stdin.readLineSync();
  if (assignmentInput == null) {
    print("INVALID INPUT!!!");
    return;
  }
  try {
    assignmentScore = double.parse(assignmentInput);
  } catch (e) {
    print("INVALID INPUT!!!");
    return;
  }

  // Input score midterm
  double midtermScore = 0;
  print("Enter your Midterm Score: ");
  String? midtermInput = stdin.readLineSync();
  if (midtermInput == null) {
    print("INVALID INPUT!!!");
    return;
  }
  try {
    midtermScore = double.parse(midtermInput);
  } catch (e) {
    print("INVALID INPUT!!!");
    return;
  }

  // Input score final exam
  double finalExamScore = 0;
  print("Enter your Final Exam Score: ");
  String? finalExamInput = stdin.readLineSync();
  if (finalExamInput == null) {
    print("INVALID INPUT!!!");
    return;
  }
  try {
    finalExamScore = double.parse(finalExamInput);
  } catch (e) {
    print("INVALID INPUT!!!");
    return;
  }

  // Calculate final grade using weight
  double finalGrade = (assignmentScore * assignmentWeight) +
      (midtermScore * midtermWeight) +
      (finalExamScore * finalExamWeight);

  // Determine letter grade
  String letterGrade;
  if (finalGrade >= 90) {
    letterGrade = "A";
  } else if (finalGrade >= 80) {
    letterGrade = "B";
  } else if (finalGrade >= 70) {
    letterGrade = "C";
  } else if (finalGrade >= 60) {
    letterGrade = "D";
  } else {
    letterGrade = "F";
  }

  // Check if student passed or failed
  String status;
  if (finalGrade >= passingGradeThreshold) {
    status = "PASSED";
  } else {
    status = "FAILED";
  }

  // Print results
  print("\nStudent Name: " + studentName);
  print("Assignment Score: " + assignmentScore.toString());
  print("Midterm Score: " + midtermScore.toString());
  print("Final Exam Score: " + finalExamScore.toString());
  print("Final Grade: " + finalGrade.toString());
  print("Letter Grade: " + letterGrade);
  print("Status: " + status);
}


