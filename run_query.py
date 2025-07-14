import sqlite3

def run_query(query: str, params: tuple = ()) -> list:
    try:
        return cursor.execute(query, params)
    except sqlite3.OperationalError as e:
        print(f"OperationalError: {e}")
        return None
    except sqlite3.IntegrityError as e:
        print(f"IntegrityError: {e}")
        return None
    except sqlite3.ProgrammingError as e:
        print(f"ProgrammingError: {e}")
        return None
    except Exception as e:
        print(f"Unexpected error: {e}")
        return None

conn = sqlite3.connect(':memory:')
cursor = conn.cursor()
run_query("CREATE TABLE IF NOT EXISTS users (id INTEGER PRIMARY KEY, name TEXT)")
run_query("INSERT INTO users (name) VALUES (?)", ("Alice",))
run_query("INSERT INTO users (name) VALUES (?)", ("Bob",))

# Query data
results = run_query("SELECT * FROM users")
print(dict(results))  # [(1, 'Alice'), (2, 'Bob')]

conn.close()  # Close the in-memory DB when done