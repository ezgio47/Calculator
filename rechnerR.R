# Grundlegende Operationen
add <- function(numbers) {
  return(sum(numbers))
}

subtract <- function(numbers) {
  result <- numbers[1]
  for (num in numbers[-1]) {
    result <- result - num
  }
  return(result)
}

multiply <- function(numbers) {
  result <- 1
  for (num in numbers) {
    result <- result * num
  }
  return(result)
}

divide <- function(numbers) {
  result <- numbers[1]
  for (num in numbers[-1]) {
    if (num == 0) {
      return("Fehler: Division durch Null!")
    }
    result <- result / num
  }
  return(result)
}

# Erweiterte mathematische Funktionen
power <- function(base, exponent) {
  return(base ^ exponent)
}

square_root <- function(x) {
  if (x < 0) {
    return("Fehler: Quadratwurzel von negativen Zahlen ist nicht definiert!")
  }
  return(sqrt(x))
}

logarithm <- function(x, base = 10) {
  if (x <= 0) {
    return("Fehler: Logarithmus von nicht-positiven Zahlen ist nicht definiert!")
  }
  return(log(x, base = base))
}

sinus <- function(x) {
  return(sin(x * pi / 180))
}

cosinus <- function(x) {
  return(cos(x * pi / 180))
}

tangens <- function(x) {
  return(tan(x * pi / 180))
}

# Komplexe Zahlenoperationen
complex_add <- function(c1, c2) {
  return(c1 + c2)
}

complex_subtract <- function(c1, c2) {
  return(c1 - c2)
}

complex_multiply <- function(c1, c2) {
  return(c1 * c2)
}

complex_divide <- function(c1, c2) {
  if (Mod(c2) == 0) {
    return("Fehler: Division durch Null!")
  }
  return(c1 / c2)
}

# Menü-Anzeige
print_menu <- function() {
  cat("\nWählen Sie die Operation:\n")
  cat("1. Addition\n")
  cat("2. Subtraktion\n")
  cat("3. Multiplikation\n")
  cat("4. Division\n")
  cat("5. Potenzierung\n")
  cat("6. Quadratwurzel\n")
  cat("7. Logarithmus\n")
  cat("8. Sinus\n")
  cat("9. Kosinus\n")
  cat("10. Tangens\n")
  cat("11. Komplexe Addition\n")
  cat("12. Komplexe Subtraktion\n")
  cat("13. Komplexe Multiplikation\n")
  cat("14. Komplexe Division\n")
}

# Hauptfunktion
calculator <- function() {
  repeat {
    print_menu()
    choice <- readline(prompt = "Geben Sie die Nummer der Operation ein (1/2/3/4/5/6/7/8/9/10/11/12/13/14) oder 'q' zum Beenden: ")
    
    if (choice == 'q') {
      break
    }
    
    if (choice %in% c('1', '2', '3', '4')) {
      numbers <- as.numeric(unlist(strsplit(readline(prompt = "Geben Sie die Zahlen ein, getrennt durch Leerzeichen: "), " ")))
    }
    
    result <- switch(choice,
                     "1" = add(numbers),
                     "2" = subtract(numbers),
                     "3" = multiply(numbers),
                     "4" = divide(numbers),
                     "5" = {
                       base <- as.numeric(readline(prompt = "Geben Sie die Basis der Potenzierung ein: "))
                       exponent <- as.numeric(readline(prompt = "Geben Sie den Exponenten ein: "))
                       power(base, exponent)
                     },
                     "6" = {
                       x <- as.numeric(readline(prompt = "Geben Sie die Zahl für die Quadratwurzel ein: "))
                       square_root(x)
                     },
                     "7" = {
                       x <- as.numeric(readline(prompt = "Geben Sie die Zahl für den Logarithmus ein: "))
                       base <- as.numeric(readline(prompt = "Geben Sie die Basis des Logarithmus ein (Standard ist 10): "))
                       logarithm(x, base)
                     },
                     "8" = {
                       x <- as.numeric(readline(prompt = "Geben Sie den Winkel für den Sinus ein (in Grad): "))
                       sinus(x)
                     },
                     "9" = {
                       x <- as.numeric(readline(prompt = "Geben Sie den Winkel für den Kosinus ein (in Grad): "))
                       cosinus(x)
                     },
                     "10" = {
                       x <- as.numeric(readline(prompt = "Geben Sie den Winkel für den Tangens ein (in Grad): "))
                       tangens(x)
                     },
                     "11" = {
                       real1 <- as.numeric(readline(prompt = "Geben Sie den Realteil der ersten komplexen Zahl ein: "))
                       imag1 <- as.numeric(readline(prompt = "Geben Sie den Imaginärteil der ersten komplexen Zahl ein: "))
                       real2 <- as.numeric(readline(prompt = "Geben Sie den Realteil der zweiten komplexen Zahl ein: "))
                       imag2 <- as.numeric(readline(prompt = "Geben Sie den Imaginärteil der zweiten komplexen Zahl ein: "))
                       c1 <- complex(real = real1, imaginary = imag1)
                       c2 <- complex(real = real2, imaginary = imag2)
                       complex_add(c1, c2)
                     },
                     "12" = {
                       real1 <- as.numeric(readline(prompt = "Geben Sie den Realteil der ersten komplexen Zahl ein: "))
                       imag1 <- as.numeric(readline(prompt = "Geben Sie den Imaginärteil der ersten komplexen Zahl ein: "))
                       real2 <- as.numeric(readline(prompt = "Geben Sie den Realteil der zweiten komplexen Zahl ein: "))
                       imag2 <- as.numeric(readline(prompt = "Geben Sie den Imaginärteil der zweiten komplexen Zahl ein: "))
                       c1 <- complex(real = real1, imaginary = imag1)
                       c2 <- complex(real = real2, imaginary = imag2)
                       complex_subtract(c1, c2)
                     },
                     "13" = {
                       real1 <- as.numeric(readline(prompt = "Geben Sie den Realteil der ersten komplexen Zahl ein: "))
                       imag1 <- as.numeric(readline(prompt = "Geben Sie den Imaginärteil der ersten komplexen Zahl ein: "))
                       real2 <- as.numeric(readline(prompt = "Geben Sie den Realteil der zweiten komplexen Zahl ein: "))
                       imag2 <- as.numeric(readline(prompt = "Geben Sie den Imaginärteil der zweiten komplexen Zahl ein: "))
                       c1 <- complex(real = real1, imaginary = imag1)
                       c2 <- complex(real = real2, imaginary = imag2)
                       complex_multiply(c1, c2)
                     },
                     "14" = {
                       real1 <- as.numeric(readline(prompt = "Geben Sie den Realteil der ersten komplexen Zahl ein: "))
                       imag1 <- as.numeric(readline(prompt = "Geben Sie den Imaginärteil der ersten komplexen Zahl ein: "))
                       real2 <- as.numeric(readline(prompt = "Geben Sie den Realteil der zweiten komplexen Zahl ein: "))
                       imag2 <- as.numeric(readline(prompt = "Geben Sie den Imaginärteil der zweiten komplexen Zahl ein: "))
                       c1 <- complex(real = real1, imaginary = imag1)
                       c2 <- complex(real = real2, imaginary = imag2)
                       complex_divide(c1, c2)
                     },
                     "Ungültige Eingabe"
    )
    
    cat("Ergebnis:", result, "\n")
  }
}

# Hauptprogramm ausführen
calculator()
