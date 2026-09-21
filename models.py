import sqlite3
from pathlib import Path

DB_PATH = Path(__file__).resolve().parent / 'database' / 'library_management.db'


def get_connection():
    conn = sqlite3.connect(DB_PATH)
    conn.row_factory = sqlite3.Row
    return conn


def init_db():
    schema_path = Path(__file__).resolve().parent / 'database' / 'schema.sql'
    with open(schema_path, 'r', encoding='utf-8') as file:
        sql = file.read()

    conn = get_connection()
    conn.executescript(sql)
    conn.commit()
    conn.close()


def get_room_summary():
    conn = get_connection()
    rows = conn.execute(
        "SELECT id, room_name, status, capacity FROM rooms ORDER BY id"
    ).fetchall()
    conn.close()
    return [dict(row) for row in rows]
