from table_sql import insert_data_to_db, db_file
import sqlite3


def execute_query(sql: str) -> list:
    with sqlite3.connect(db_file) as con:
        cur = con.cursor()
        cur.execute(sql)
        return cur.fetchall()


def parsing_query(path_query) -> str:
    with open(path_query, "r") as file:
        sql = file.read()
    
    name_list = [
        ("'subject'", "'subject_id'"),
        ("'teacher'", "'teacher_id'"),
        ("'group'", "'group_id'"),
        ("'student'", "'student_id'")
        ]
    
    query_list = []

    for name in name_list:
        if name[0] in sql:
            query = input(f"Enter {name[0]} or {name[1]}: ")
            query_list.append((name, query))
    
    for item in query_list:
        if item[1].isdigit():
            sql = sql.replace(item[0][1], f"{item[1]}")
        elif item[0] in [("'group'", "'group_id'")]:
            sql = sql.replace(item[0][0], f"'{item[1]}'")
        else:
            sql = sql.replace(item[0][0], f"'{item[1]}'")
    
    return sql


def main():
    insert_data_to_db()
    
    while True:
        query = input("\nEnter the request number: ")
        path_query = f"query/query_{query}.sql"

        if query == "":
            break
        
        try:
            sql = parsing_query(path_query)

            for i in execute_query(sql):
                print(i)

        except FileNotFoundError:
            print("Invalid request number, such a number does not exist.")
        except Exception as error:
            print(f"Error: {error}")


if __name__ == "__main__": 
    main()
    