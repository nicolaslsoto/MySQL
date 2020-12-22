# import mysql.connector
# conn = mysql.connector.connect(option_files = 'my.conf', option_groups = ['connection_details'])
import MySQLdb
conn = MySQLdb.connect(host="127.0.0.1",port=3306,user="root",passwd="",db="ig_clone")
c = conn.cursor()
q = "SELECT * FROM tags;"
c.execute(q)
for row in c.fetchall():
    print(row)
conn.close()
