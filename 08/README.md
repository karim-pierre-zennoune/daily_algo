Wake-Up Kata — updateItemDetails()
Écris une fonction updateItemDetails() en TypeScript qui met à jour les informations d’un article dans un inventaire.

La fonction prend en paramètres :
un tableau Item[]
un itemId: number
un objet updates contenant une ou plusieurs propriétés à modifier d'un Item dans un objet  (ex: { price: 79 }, { name: "Nouveau nom" }, { quantity: 10, price: 45 }) (si tu as des difficultés à typer updates,  tu peux te renseigner sur l'utilisation de Partialen typescript😉

La fonction doit :
modifier directement l’article dans le tableau inventory
retourner un objet {success: boolean; message: string;}

Si itemId ne correspond à aucun article, retourne { success: false et message "Article introuvable."}
Si updates.price ou updates.quantity est négatif, retourne {success: false et message explicite}
Si tout est ok, mets à jour l’article (avec le spread operator) et retourne {success: true et un message "Article mis à jour avec succès.}
