# Facial Recognition Attendance System

## Overview
This project is a **Facial Recognition-based Attendance System** that helps track student attendance automatically. The system uses **Tkinter** for the graphical user interface, **OpenCV** and **face_recognition** for facial recognition, and **MySQL** for database management.

## Features
- **User-friendly GUI:** Built using Tkinter for easy interaction.
- **Real-time Face Recognition:** Captures live video and recognizes students.
- **Database Management:** Stores attendance data in a MySQL database.
- **Data Security & Privacy:** Ensures secure storage and complies with privacy laws.
- **Prevention of Proxy Attendance:** Verifies identities in real time to prevent fraud.

## System Requirements
- Python 3.x
- OpenCV (`cv2`)
- `face_recognition` library
- MySQL database
- `tkinter` for GUI

## Installation
1. Install required Python packages:
   ```bash
   pip install opencv-python face_recognition mysql-connector-python
   ```
2. Set up MySQL database with required tables:
   ```sql
   CREATE DATABASE mydb;
   USE mydb;
   CREATE TABLE Category (
       Category_ID INT PRIMARY KEY,
       Category_Type VARCHAR(255)
   );
   
   CREATE TABLE Event (
       Event_ID INT PRIMARY KEY,
       Event_Name VARCHAR(255),
       Event_Organiser_Name VARCHAR(255),
       Category_Category_ID INT,
       FOREIGN KEY (Category_Category_ID) REFERENCES Category(Category_ID)
   );
   
   CREATE TABLE Post (
       Post_ID INT PRIMARY KEY,
       Post_Article TEXT,
       Post_Views INT,
       Event_Event_ID INT,
       Event_Category_Category_ID INT,
       FOREIGN KEY (Event_Event_ID) REFERENCES Event(Event_ID)
   );
   
   CREATE TABLE Comment (
       Comment_ID INT PRIMARY KEY,
       Comment_Data TEXT,
       Post_Post_ID INT,
       Post_Event_Event_ID INT,
       Post_Event_Category_Category_ID INT,
       FOREIGN KEY (Post_Post_ID) REFERENCES Post(Post_ID)
   );
   
   CREATE TABLE Tag (
       Tag_ID INT PRIMARY KEY,
       Tag_Word VARCHAR(255)
   );
   
   CREATE TABLE Post_Has_Tag (
       Post_ID INT,
       Event_ID INT,
       Cat_ID INT,
       Tag_ID INT,
       PRIMARY KEY (Post_ID, Event_ID, Cat_ID, Tag_ID),
       FOREIGN KEY (Post_ID) REFERENCES Post(Post_ID),
       FOREIGN KEY (Tag_ID) REFERENCES Tag(Tag_ID)
   );
   ```

3. Run the Python script:
   ```bash
   python attendance_gui.py
   ```

## Project Phases
1. **Project Initiation:** Define objectives, scope, and obtain necessary hardware/software.
2. **Data Collection & Preparation:** Gather and organize student images.
3. **Face Encoding:** Convert images into encodings and store them.
4. **GUI Development:** Design an interactive interface using Tkinter.
5. **Real-time Recognition:** Implement OpenCV-based facial recognition.
6. **Attendance Logging:** Store recognized faces with timestamps in a CSV file.
7. **Testing & Validation:** Ensure system accuracy under different conditions.
8. **Project Management:** Use Git for version control and maintain updates.

## Challenges and Solutions
### **1. System Reliability**
- Ensuring **high availability** to prevent attendance disruptions.

### **2. Accuracy**
- Reducing false positives by improving face recognition models.

### **3. User Training**
- Providing training materials for administrators and students.

### **4. Privacy Compliance**
- Following **privacy laws** and obtaining consent for facial data collection.

### **5. Proxy Attendance Prevention**
- Using **real-time detection** to prevent fraudulent attendance marking.

### **6. Data Security**
- Implementing **encryption** and database security measures.

## Future Enhancements
- **Mobile App Integration** for remote attendance tracking.
- **AI-based Attendance Analytics** to generate reports.
- **Cloud Storage** for secure and scalable data management.

## Contributors
- [Your Name]
- [Your Email]

## License
This project is licensed under the **MIT License**.

