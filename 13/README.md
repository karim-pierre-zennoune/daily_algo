1️⃣  Pour cette reprise, je vous propose de refactoriser la fonction getAdultsOnly en 1 seule ligne !
Voici le code de départ :
function getAdultsOnly(users) {
   const adults = [];
   for (let i = 0; i < users.length; i++) {
      if (users[i].age >= 18) {
         adults.push(users[i]);
      }
   }
   return adults;
}

2️⃣  Si vous êtes allés vite sur cette consigne, je vous propose celle-ci :
Crée une fonction sumEvenNumbers(numbers) qui prend en paramètre un tableau de nombre et qui doit retourner la somme des nombres pairs de ce tableau.
Encore une fois, la fonction doit être présentée en 1 seule ligne 😉 

3️⃣  Si tu as réussi les 2 premières consignes, la 3ème ne devrait pas de poser de souci :
Crée une fonction getEmails(users) qui prend en paramètre un tableau d'utilisateurs et doit retourner un tableau qui contient uniquement les emails des utilisateurs majeurs (on considère que le tableau usersest un tableau d'objets et chaque objet possède une propriété ageet une propriété email au minimum).
Et à nouveau, le tout en une seule ligne, tu l'as compris.

Ajouter votre emoji selon votre avancement ! 