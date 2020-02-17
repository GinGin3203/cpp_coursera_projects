
# simple_database
Final assignment of the C++ Coursera course "Programming in C++: Yellow Belt" by MIPT and Yandex.

Note that it's a student project.

The database stores <Date, Event> pairs ("Event" is the same as a string).

## Supported commands:
- **Add date event** - add item to the database;
- **Print** — print all contents;
- **Find condition** — return entries that suffice a given condition. If given an empty condition, the database returns all entries. (e.g. **Find (date <= 2017-01-01) AND (event == "New Year")**;
- **Del condition** — delete all the entries that suffice a given condition. If given an empty condition, the database deletes all contents. (e.g. **Del event != "Meeting"**);
- **Last date** — return the last event that happened not later than the given date.
