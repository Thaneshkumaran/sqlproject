import cgi
import mysql.connector

# Get form data
form = cgi.FieldStorage()
task_content = form.getvalue("task")
print(task_content)

# Connect to MySQL
db = mysql.connector.connect(
    host="localhost",
    user="thanesh",
    password="123456",
    database="mysql"
)

cursor = db.cursor()
cursor.execute("INSERT INTO tasks (task) VALUES (%s)", (task_content,))
db.commit()
cursor.close()

# # Redirect back to the main page (index.html)
# print("Location: /cgi-bin/get_tasks.py\n")
# print()  # This is necessary to end the headers.