# Facial Recognition Attendance System

## Overview
-> This project is a **Facial Recognition-based Attendance System** that helps track student attendance automatically. The system uses **Tkinter** for the graphical user interface, **OpenCV** and  **face_recognition** for facial recognition, and **MySQL** for database management.
-> This project is a Tkinter-based GUI application for viewing MySQL database tables. It allows users to select and display data from different tables in a structured Treeview format.

## Features
- **User-friendly GUI:** Built using Tkinter for easy interaction.
- **Real-time Face Recognition:** Captures live video and recognizes students.
- **Database Management:** Stores attendance data in a MySQL database.
- **Data Security & Privacy:** Ensures secure storage and complies with privacy laws.
- **Prevention of Proxy Attendance:** Verifies identities in real time to prevent fraud.
   |
---
|
---
   |
   ## GUI 
   - **Connection :** Connects to a MySQL database.
   - **REAL-TIME :** Retrieves and displays data dynamically.
   - **SUB-SECTIONS :** Provides a dropdown menu to select different tables.
   - **DISPLAY :** Uses Tkinter's Treeview widget for tabular display.

## System Requirements
- Python 3.x
- OpenCV (`cv2`)
- `face_recognition` library
- MySQL database
- `tkinter` for GUI
- MySQL Server
- MySQL Connector for Python
- Tkinter (comes pre-installed with Python)
  
## Installation & Setup

1. **Clone the Repository**
   ```sh
   git clone https://github.com//sql-data-viewer.git
   cd sql-data-viewer
   ```
2. **Install Dependencies**
   ```sh
   pip install mysql-connector-python
   ```
3. **Configure Database Connection**
   Update the database credentials in the Python script:
   ```python
   db = c.connect(
       host="localhost",
       user="Pbl",
       password="Pbl@123",
       db="mydb"
   )
   ```
4. **Run the Application**
   ```sh
   python app.py
   ```3. Run the Python script:
   ```bash
   python attendance_gui.py
   ## Database Schema

The application interacts with the following schema:

### `Category` Table

| Column         | Type       | Constraints         |
| -------------- | ---------- | ------------------- |
| Category\_ID   | VARCHAR(5) | PRIMARY KEY, UNIQUE |
| Category\_Type | CHAR(50)   | NOT NULL            |

### `Event` Table

| Column                 | Type         | Constraints                                     |
| ---------------------- | ------------ | ----------------------------------------------- |
| Event\_ID              | VARCHAR(5)   | PRIMARY KEY, UNIQUE                             |
| Event\_Name            | VARCHAR(100) | NOT NULL                                        |
| Event\_Organiser\_Name | CHAR(70)     | NOT NULL                                        |
| Category\_Category\_ID | VARCHAR(5)   | FOREIGN KEY REFERENCES `Category`(Category\_ID) |

### `Post` Table

| Column                        | Type         | Constraints                                     |
| ----------------------------- | ------------ | ----------------------------------------------- |
| Post\_ID                      | VARCHAR(5)   | PRIMARY KEY, UNIQUE                             |
| Post\_Article                 | VARCHAR(600) | NOT NULL                                        |
| Post\_Views                   | INT          | NOT NULL                                        |
| Event\_Event\_ID              | VARCHAR(5)   | FOREIGN KEY REFERENCES `Event`(Event\_ID)       |
| Event\_Category\_Category\_ID | VARCHAR(5)   | FOREIGN KEY REFERENCES `Category`(Category\_ID) |

### `Comment` Table

| Column                              | Type         | Constraints                                     |
| ----------------------------------- | ------------ | ----------------------------------------------- |
| Comment\_ID                         | VARCHAR(5)   | PRIMARY KEY, UNIQUE                             |
| Comment\_Data                       | VARCHAR(500) | NOT NULL                                        |
| Post\_Post\_ID                      | VARCHAR(5)   | FOREIGN KEY REFERENCES `Post`(Post\_ID)         |
| Post\_Event\_Event\_ID              | VARCHAR(5)   | FOREIGN KEY REFERENCES `Event`(Event\_ID)       |
| Post\_Event\_Category\_Category\_ID | VARCHAR(5)   | FOREIGN KEY REFERENCES `Category`(Category\_ID) |

### `Tag` Table

| Column    | Type        | Constraints         |
| --------- | ----------- | ------------------- |
| Tag\_ID   | VARCHAR(5)  | PRIMARY KEY, UNIQUE |
| Tag\_Word | VARCHAR(50) | UNIQUE              |

### `Post_has_Tag` Table

| Column                              | Type       | Constraints                                     |
| ----------------------------------- | ---------- | ----------------------------------------------- |
| Post\_Post\_ID                      | VARCHAR(5) | FOREIGN KEY REFERENCES `Post`(Post\_ID)         |
| Post\_Event\_Event\_ID              | VARCHAR(5) | FOREIGN KEY REFERENCES `Event`(Event\_ID)       |
| Post\_Event\_Category\_Category\_ID | VARCHAR(5) | FOREIGN KEY REFERENCES `Category`(Category\_ID) |
| Tag\_Tag\_ID                        | VARCHAR(5) | FOREIGN KEY REFERENCES `Tag`(Tag\_ID)           |

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
- **Cloud Storage** for secure and scalable data management
- Implement **search** functionality.
- **Allow** adding, updating, and deleting records.
- Enhance **UI** with additional features.

## Contributors
- [CH. YASHWANTH]
- [nissirao7@gmail.com]

