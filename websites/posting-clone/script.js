document.addEventListener("DOMContentLoaded", () => {

    function submitForm() {
        // Input-Felder auslesen
        var name = document.getElementById("inputName").value;
        var headline = document.getElementById("inputTitle").value;
        var text = document.getElementById("inputText").value;
        var date = document.getElementById("inputDate").value;
      
        // Zählervariable für die Nummerierung
        var count = document.getElementById("displayArea").getElementsByTagName("tr").length + 1;
      
        // Neue Tabellezeile erstellen
        var newRow = document.createElement("tr");
      
        // Neue Zellen für die Spalten erstellen
        var numberCell = document.createElement("td");
        var nameCell = document.createElement("td");
        var headingCell = document.createElement("td");
        var dateCell = document.createElement("td");
        var textCell = document.createElement("td");
      
        // Inhalt für die Zellen setzen
        numberCell.innerHTML = count;
        nameCell.innerHTML = name;
        headingCell = headline;
        dateCell.innerHTML = date;
        textCell.innerHTML = text;
      
        // Zellen zur Zeile hinzufügen
        newRow.appendChild(numberCell);
        newRow.appendChild(nameCell);
        newRow.appendChild(headingCell);
        newRow.appendChild(dateCell);
        newRow.appendChild(textCell);
      
        // Neue Zeile zur Tabelle hinzufügen
        document.getElementById("displayArea").appendChild(newRow);
      });
})