/*
 3. To-Do List App:
 Create a to-do list program using a List where each item has a description, due date, and
 completion status (as bool). Implement methods to add, remove, and update tasks, including the
 use of for-each loops.*/
class ToDoList {
  List<Map<String, dynamic>> tasks = [];
// [{}]
  // Function to add a task
  void addTask(String description, String dueDate) {
    tasks.add({
      'description': description,
      'dueDate': dueDate,
      'isCompleted': false,
    });
    print("Task added: $description");
  }

  void removeTask({required String description, String}) {
    for (var item in tasks) {
      if (item['description'] == description) {
        print("the remove task of the descprtion ${item[description]}");
        tasks.remove(item);

        return;
      }
    }
    print("Task not found: $description");
  }

  void updateTask(String description, {required bool? newStatus}) {
    for (var item in tasks) {
      if (item['description'] == description) {
        if (newStatus != null) {
          item['isCompleted'] = newStatus;
          print("Task updated: $description");
          return;
        }
      }
    }
    print("Task not found: $description");
  }

  void showTasks() {
    if (tasks.isEmpty) {
      print("No tasks in the list");
    } else {
      for (var item in tasks) {
        print(
            "task is description =>:${item['description']},  ueDate is =>:${item['dueDate']}, isCompleted is  =>${item['isCompleted']} ");
      }
    }
  }
}

void main() {
  ToDoList project = ToDoList();
  project.addTask("Buy groceries", "13-02-2025");
  project.addTask("Finish project", '25-4-2025');
  project.showTasks();
  project.updateTask("Finish project", newStatus: true);
  project.showTasks();

  project.removeTask(description: "Buy groceries");
  project.showTasks();
}
