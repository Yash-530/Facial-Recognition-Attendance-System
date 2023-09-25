import tkinter as tk
from tkinter import ttk
import mysql.connector as c # or pymysql if you prefer

# Create a database connection
db = c.connect(
    host="localhost",
    user="Pbl",
    password="Pbl@123",
    db="mydb"
)

# Create a Tkinter application window
app = tk.Tk()
app.title("SQL Data Viewer")

# Create a function to load and display data
def load_data(table_name):
    cursor = db.cursor()
    cursor.execute(f"SELECT * FROM {table_name}")
    data = cursor.fetchall()
    cursor.close()
    
    # Clear the existing data in the treeview
    for item in tree.get_children():
        tree.delete(item)
    
    # Insert data into the treeview
    for row in data:
        tree.insert("", "end", values=row)

# Create a combobox to select the table to display
table_selector = ttk.Combobox(app, values=["Category", "Event", "Post", "Comment", "Tag", "Post_has_Tag"])
table_selector.set("Select a Table")
table_selector.pack(pady=10)

# Create a button to load data
load_button = tk.Button(app, text="Load Data", command=lambda: load_data(table_selector.get()))
load_button.pack(pady=5)

# Create a Treeview widget to display the data
columns = ["Column1", "Column2", "Column3", "Column4", "Column5"]  # Customize column names as needed
tree = ttk.Treeview(app, columns=columns, show="headings")

# Set column headings
for col in columns:
    tree.heading(col, text=col)

# Set column widths
for col in columns:
    tree.column(col, width=100)  # Adjust column widths as needed

tree.pack()

# Start the Tkinter event loop
app.mainloop()

# Close the database connection when the application is closed
db.close()
