# Jobsheet 10: Dasar State Management

## Praktikum 1: Dasar State dengan Model-View

### Langkah 1: Buat Project Baru
![alt text](image.png)

### Langkah 2: Membuat model task.dart
![alt text](image-1.png)

### Langkah 3: Buat file plan.dart
![alt text](image-2.png)

### Langkah 4: Buat file data_layer.dart
![alt text](image-3.png)

### Langkah 5: Pindah ke file main.dart
![alt text](image-4.png)

### Langkah 6: buat plan_screen.dart
![alt text](image-5.png)

### Langkah 7: buat method _buildAddTaskButton()
![alt text](image-6.png)

### Langkah 8: buat widget _buildList()
![alt text](image-7.png)

### Langkah 9: buat widget _buildTaskTile
![alt text](image-8.png)

### Langkah 10: Tambah Scroll Controller
![alt text](image-9.png)

### Langkah 11: Tambah Scroll Listener
![alt text](image-10.png)

### Langkah 12: Tambah controller dan keyboard behavior
![alt text](image-11.png)

### Langkah 13: Terakhir, tambah method dispose()
![alt text](image-12.png)

### Langkah 14: Hasil
![alt text](jobsheet10_1.gif)

## Praktikum 2: Mengelola Data Layer dengan InheritedWidget dan InheritedNotifier

### Langkah 1: Buat file plan_provider.dart
![alt text](image-13.png)

### Langkah 2: Edit main.dart
![alt text](image-14.png)

### Langkah 3: Tambah method pada model plan.dart
![alt text](image-15.png)

### Langkah 4: Pindah ke PlanScreen
![alt text](image-16.png)

### Langkah 5: Edit method _buildAddTaskButton
![alt text](image-17.png)

### Langkah 6: Edit method _buildTaskTile
![alt text](image-18.png)

### Langkah 7: Edit _buildList
![alt text](image-19.png)

### Langkah 8: Tetap di class PlanScreen
![alt text](image-20.png)

### Langkah 9: Tambah widget SafeArea
![alt text](image-21.png)

### Hasil Run
![alt text](jobsheet10_2.gif)

## Praktikum 3: Membuat State di Multiple Screens

### Langkah 1: Edit PlanProvider
![alt text](image-22.png)

### Langkah 2: Edit main.dart
![alt text](image-23.png)

### Langkah 3: Edit plan_screen.dart
![alt text](image-24.png)

### Langkah 4: Error
Itu akan terjadi error setiap kali memanggil PlanProvider.of(context). Itu terjadi karena screen saat ini hanya menerima tugas-tugas untuk satu kelompok Plan, tapi sekarang PlanProvider menjadi list dari objek plan tersebut.

### Langkah 5: Tambah getter Plan
![alt text](image-25.png)

### Langkah 6: Method initState()
![alt text](image-26.png)

### Langkah 7: Widget build
![alt text](image-27.png)

### Langkah 8: Edit _buildTaskTile
![alt text](image-28.png)

### Langkah 9: Buat screen baru
![alt text](image-29.png)
![alt text](image-30.png)

### Langkah 10: Pindah ke class _PlanCreatorScreenState
![alt text](image-31.png)

### Langkah 11: Pindah ke method build
![alt text](image-32.png)

### Langkah 12: Buat widget _buildListCreator
![alt text](image-33.png)

### Langkah 13: Buat void addPlan()
![alt text](image-34.png)

### Langkah 14: Buat widget _buildMasterPlans()
![alt text](image-35.png)

### Hasil Run
![alt text](jobsheet10_3.gif)