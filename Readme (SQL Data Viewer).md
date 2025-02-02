# SQL Data Viewer

## Description

This project is a Tkinter-based GUI application for viewing MySQL database tables. It allows users to select and display data from different tables in a structured Treeview format.

## Features

- Connects to a MySQL database.
- Retrieves and displays data dynamically.
- Provides a dropdown menu to select different tables.
- Uses Tkinter's Treeview widget for tabular display.

## Prerequisites

- Python 3.x
- MySQL Server
- MySQL Connector for Python
- Tkinter (comes pre-installed with Python)

## Installation & Setup

1. **Clone the Repository**
   ```sh
   git clone https://github.com/your-repo/sql-data-viewer.git
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
   ```

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

## Future Enhancements

- Implement search functionality.
- Allow adding, updating, and deleting records.
- Enhance UI with additional features.

## License

This project is licensed under the MIT License.

