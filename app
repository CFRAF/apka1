# Importowanie bibliotek
import tkinter as tk
import requests
import json

# Utworzenie interfejsu użytkownika
root = tk.Tk()
root.geometry("500x500")

# Przygotowanie przycisku
button = tk.Button(root, text="Pobierz dane", command=getData)
button.pack()

# Funkcja pobierania danych
def getData():
    # Pobranie danych z internetu
    response = requests.get("https://api.example.com/data")

    # Przetworzenie danych
    data = json.loads(response.text)

    # Wyświetlenie danych na ekranie
    label = tk.Label(root, text=data)
    label.pack()

# Uruchamianie aplikacji
root.mainloop()
