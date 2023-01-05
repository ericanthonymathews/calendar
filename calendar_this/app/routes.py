from flask import Blueprint, render_template
import os
import sqlite3


bp = Blueprint('main', __name__, url_prefix="/")
DB_FILE = os.environ.get("DB_FILE")
# print(DB_FILE, "<----------------CONSOLE LOG")


@bp.route("/")
def main():
    with sqlite3.connect(DB_FILE) as conn:
        curs = conn.cursor()
    curs.execute(
        "SELECT id, name, start_datetime, end_datetime FROM appointments ORDER BY start_datetime;")
    rows = curs.fetchall()

    return render_template('main.html', rows=rows)
