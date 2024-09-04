import math
import cmath

# Grundlegende Funktionen
def add(x, y):
    return x + y

def subtract(x, y):
    return x - y

def multiply(x, y):
    return x * y

def divide(x, y):
    if y == 0:
        return "Fehler: Division durch Null!"
    return x / y

# Erweiterte mathematische Funktionen
def power(x, y):
    return x ** y

def square_root(x):
    if x < 0:
        return "Fehler: Quadratwurzel von negativen Zahlen ist nicht definiert!"
    return math.sqrt(x)

def log(x, base=10):
    if x <= 0:
        return "Fehler: Logarithmus von nicht-positiven Zahlen ist nicht definiert!"
    return math.log(x, base)

def sin(x):
    return math.sin(math.radians(x))

def cos(x):
    return math.cos(math.radians(x))

def tan(x):
    return math.tan(math.radians(x))

def complex_add(x1, y1, x2, y2):
    return (x1 + x2, y1 + y2)

def complex_subtract(x1, y1, x2, y2):
    return (x1 - x2, y1 - y2)

def complex_multiply(x1, y1, x2, y2):
    return (x1 * x2 - y1 * y2, x1 * y2 + y1 * x2)

def complex_divide(x1, y1, x2, y2):
    denom = x2 ** 2 + y2 ** 2
    if denom == 0:
        return "Fehler: Division durch Null!"
    real = (x1 * x2 + y1 * y2) / denom
    imag = (y1 * x2 - x1 * y2) / denom
    return (real, imag)

# Funktion zur Anzeige des Menüs
def print_menu():
    print("\nWählen Sie die Operation:")
    print("1. Addition")
    print("2. Subtraktion")
    print("3. Multiplikation")
    print("4. Division")
    print("5. Potenzierung")
    print("6. Quadratwurzel")
    print("7. Logarithmus")
    print("8. Sinus")
    print("9. Kosinus")
    print("10. Tangens")
    print("11. Komplexe Addition")
    print("12. Komplexe Subtraktion")
    print("13. Komplexe Multiplikation")
    print("14. Komplexe Division")

# Funktion zur Berechnung
def calculator():
    while True:
        print_menu()
        choice = input("Geben Sie die Nummer der Operation ein (1/2/3/4/5/6/7/8/9/10/11/12/13/14) oder 'q' zum Beenden: ")

        if choice == 'q':
            break

        if choice in ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10']:
            num1 = float(input("Geben Sie die erste Zahl ein: "))
            if choice in ['1', '2', '3', '4', '5']:
                num2 = float(input("Geben Sie die zweite Zahl ein: "))

        if choice == '1':
            print(f"Ergebnis: {add(num1, num2)}")
        elif choice == '2':
            print(f"Ergebnis: {subtract(num1, num2)}")
        elif choice == '3':
            print(f"Ergebnis: {multiply(num1, num2)}")
        elif choice == '4':
            print(f"Ergebnis: {divide(num1, num2)}")
        elif choice == '5':
            print(f"Ergebnis: {power(num1, num2)}")
        elif choice == '6':
            print(f"Ergebnis: {square_root(num1)}")
        elif choice == '7':
            base = float(input("Geben Sie die Basis des Logarithmus ein (Standard ist 10): ") or 10)
            print(f"Ergebnis: {log(num1, base)}")
        elif choice == '8':
            print(f"Ergebnis: {sin(num1)}")
        elif choice == '9':
            print(f"Ergebnis: {cos(num1)}")
        elif choice == '10':
            print(f"Ergebnis: {tan(num1)}")
        elif choice == '11':
            real1 = float(input("Geben Sie den Realteil der ersten komplexen Zahl ein: "))
            imag1 = float(input("Geben Sie den Imaginärteil der ersten komplexen Zahl ein: "))
            real2 = float(input("Geben Sie den Realteil der zweiten komplexen Zahl ein: "))
            imag2 = float(input("Geben Sie den Imaginärteil der zweiten komplexen Zahl ein: "))
            result = complex_add(real1, imag1, real2, imag2)
            print(f"Ergebnis: {result[0]} + {result[1]}i")
        elif choice == '12':
            real1 = float(input("Geben Sie den Realteil der ersten komplexen Zahl ein: "))
            imag1 = float(input("Geben Sie den Imaginärteil der ersten komplexen Zahl ein: "))
            real2 = float(input("Geben Sie den Realteil der zweiten komplexen Zahl ein: "))
            imag2 = float(input("Geben Sie den Imaginärteil der zweiten komplexen Zahl ein: "))
            result = complex_subtract(real1, imag1, real2, imag2)
            print(f"Ergebnis: {result[0]} + {result[1]}i")
        elif choice == '13':
            real1 = float(input("Geben Sie den Realteil der ersten komplexen Zahl ein: "))
            imag1 = float(input("Geben Sie den Imaginärteil der ersten komplexen Zahl ein: "))
            real2 = float(input("Geben Sie den Realteil der zweiten komplexen Zahl ein: "))
            imag2 = float(input("Geben Sie den Imaginärteil der zweiten komplexen Zahl ein: "))
            result = complex_multiply(real1, imag1, real2, imag2)
            print(f"Ergebnis: {result[0]} + {result[1]}i")
        elif choice == '14':
            real1 = float(input("Geben Sie den Realteil der ersten komplexen Zahl ein: "))
            imag1 = float(input("Geben Sie den Imaginärteil der ersten komplexen Zahl ein: "))
            real2 = float(input("Geben Sie den Realteil der zweiten komplexen Zahl ein: "))
            imag2 = float(input("Geben Sie den Imaginärteil der zweiten komplexen Zahl ein: "))
            result = complex_divide(real1, imag1, real2, imag2)
            if isinstance(result, str):
                print(result)
            else:
                print(f"Ergebnis: {result[0]} + {result[1]}i")
        else:
            print("Ungültige Eingabe")

# Hauptprogramm ausführen
calculator()

# Einschränkung: Im Terminal kann man nur zwei Zahlen eingeben.







