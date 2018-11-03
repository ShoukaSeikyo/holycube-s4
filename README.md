# L'officiel de la Saison 4

Voici le datapack qui est utilisé sur la saison 4 de HolyCube.
La liste des fonctionnalités incluses:
* Nouvelles recettes;
* L'apparition des phantoms dans l'end;
* L'apparition des blazes à la place des pigmens dans le nether;
* Un module pour détecter les joueurs AFK;
* La gestion d'un pourcentage de joueurs pour dormir;
* Un aimant pour attirer les objets dans l'eau;
* Un module pour allonger ou réduire la durée des journées;
* Transition entre les mondes quand un joueur passe dans le void.

---

## Installation
Tous les datapacks s'installent dans le dossier `world/datapacks/` d'une sauvegarde MineCraft. Cet article du wiki gamepedia de MineCraft vous aidera plus en profondeur: [Tutoriels/Installer un pack de données](https://minecraft-fr.gamepedia.com/Tutoriels/Installer_un_pack_de_donn%C3%A9es).

---

## Problèmes récurrents

### Le gros AFK s'affiche constament:
- Regardez la valeur du scoreboard `#HC4_AFK#t hc4-config` et si elle est à 0, référez-vous à la configuration çi-dessous pour la mettre à une autre valeur.

---

## Configuration
La plupart des configurations se modifient avec un pseudonyme pour le scoreboard `hc-config`; pour les modifier, il suffit d'utiliser cette commande en remplaçant l'astérisk (\*) par le pseudonyme donné dans la liste ci-dessous et de remplacer le symbole de dollar ($) par la valeur souhaitée:
`/scoreboard players set * hc-config $`

### Nomenclature des options de configuration:
- *int*: n'importe quel nombre entier.
- *int+*: n'importe quel nombre entier positif.
- *int[x₁,x₂]: n'importe quel nombre entier entre x₁ et x₂ inclusivement.
- *bool*: 1 pour actif, 0 pour désactivé.

### AFK
- **#HC4_AFK#t** *int* `défaut: 5` - Durée en minutes avant d'être considéré comme AFK.
- **#HC4_AFK#s** *bool* `défaut: 1` - Ajoute un effet de saturation lorsque le joueur est AFK.
- **#HC4_AFK#i** *bool* `défaut: 1` - Ajoute un effete de résistance lorsque le joueur est AFK.

### Bed
- **#HC_Bed#p** *int[0,100]* `défaut: 33` - Pourcentage du nombre de joueurs qui se trouvent dans l'Overworld en mode de jeu survie nécessaire pour faire passer la nuit.

### Blaze
- **#HC4_Blaze#t** `défaut: 3600` - Nombre de ticks (20 par seconde) entre chaque apparition de blaze à la place de pigmans dans le Nether.

### Clock
- **#HC4_CLOCK#p** *bool* `défaut: 1` - Affiche l'heure aux joueurs ayant une horloge dans l'inventaire.
- **#HC4_CLOCK#w** *bool* `défaut: 1` - Affiche l'heure aux joueurs dans le Nether et l'End
- **#HC4_CLOCK#a** *bool* `défaut: 1` - Affiche l'heure aux joueurs proches d'un autre joueur ayant une horloge.
- **#HC4_CLOCK#f** *bool* `défaut: 1` - Affiche l'heure aux joueurs proches d'un item frame contenant une horloge.

### Time
- **#HC4_Time#mod** *int+* `défaut: 1` - Coefficient pour la durée du jour et la nuit.

### Void
- **#HC4_Void#o** *int[0,3]* `défaut: 1` - ID du monde de sortie lorsque le joueur tombe dans le void dans l'Overworld.
- **#HC4_Void#e** *int[0,3]* `défaut: 2` - ID du monde de sortie lorsque le joueur tombe dans le void dans l'End.
- **#HC4_Void#n** *int[0,3]* `défaut: 3` - ID du monde de sortie lorsque le joueur tombe dans le void dans le Nether.
- `0 - Désactivé` `1 - Nether` `2 - Overworld` `3 - End`

Si vous avez des problèmes à configurer le datapack, n'hésitez pas à passer sur mon [Discord public](https://discord.gg/4n5xztf), [par mail](mailto:contact@shoukaseikyo.fr) ou par le système d'issues de GitHub.
