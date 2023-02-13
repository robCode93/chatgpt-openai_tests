document.addEventListener("DOMContentLoaded", () => {

    function callJarvis(speech) {
        if (speech.includes("Wie geht es dir?")) {
          return "Mir geht es gut, danke. Wie geht es dir?";
        } else if (speech.includes("Wie ist das Wetter?")) {
          return "Ich weiß nicht, wie das Wetter ist, ich bin ein Computerprogramm ohne Zugang zu Wetterinformationen.";
        } else if (speech.includes("Erzähle mir einen Witz")) {
          return "Warum war der Mathematikbuch traurig? Weil es zu viele Probleme hatte.";
        } else {
          return "Entschuldige, ich habe dich nicht verstanden. Kannst du das wiederholen?";
        }
      }
      
})