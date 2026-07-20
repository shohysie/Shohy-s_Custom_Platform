//////////////////////////////////////////////////////////////////////////////
/////////////Plateforme de réglage personnalisé de Shohy v0.4//////////////
//////////////////////////////////////////////////////////////////////////////

//////////////Description//////////////

Cette plateforme charge dynamiquement des modifications modulaires. Elle s’active lors des combats et des incantations pour appliquer ces ajustements, sans quasiment aucun problème de compatibilité.
Tous les modules intégrés sont désactivés par défaut et doivent être activés manuellement.
Sur les cartes où les scripts globaux ne fonctionnent pas (ex. : grottes des ankhegs dans BG1), la plateforme fait apparaître une créature invisible pour exécuter les scripts. Cette créature ne compte pas dans la limite d’invocation, mais nécessite un emplacement libre pour apparaître.
La plateforme se désactive automatiquement après le combat pour économiser les ressources du jeu.
Un bouton bleu permanent apparaît dans la barre de compétences innées du protagoniste après son premier combat. Utilisez-le pour activer/désactiver les paramètres de la plateforme et de chaque module, ou pour lire la documentation détaillée.

Modules actuels :
1. Modificateurs supplémentaires d’Intelligence / Sagesse / Charisme.
2. Ennemis renforcés (les statistiques ennemies augmentent avec l’XP du protagoniste) + XP de kill accordé au dernier attaquant.
3. Rééquilibrage des styles d’armes + Effets détaillés par type d’arme (INCOMPATIBLE avec les anciennes versions du rééquilibrage des styles d’armes).
4. Maintien de la difficulté (les ennemis montent de niveau avec le protagoniste et acquièrent des compétences).
5. Augmentation de la CA et des valeurs d’attaque de toutes les créatures (pour éviter que la limite inférieure de CA de -20 ne perde son sens face à des touchers très bas).

Désactivation complète de la plateforme : désactive tous les modules, sauf certains effets permanents sur les créatures.

//////////////Historique des versions///////////////

v0.4
Ajout de la version française.
Allégement de certains fichiers et scripts.

[Ennemis renforcés (statistiques ennemies liées à l’XP du protagoniste)]
Les bonus de stats des ennemis durent maintenant 10 minutes et se réappliquent automatiquement à l’expiration.
Correction du problème où les renforcements ennemis ne se réappliquaient pas en difficulté 2 et 3.
Ajout d’une détection des PV pour éviter les dépassements de valeurs.

[Maintien de la difficulté (ennemis montent de niveau avec le protagoniste et acquièrent des compétences)]
Résoudre le problème où certains ennemis ne peuvent pas utiliser leurs compétences parce que leur IA est réglée pour attaquer en continu.
Les changements de PV des ennemis sont désormais appliqués simultanément avec le module « Ennemis renforcés » pour éviter une double augmentation.
Ajout de compétences ennemies : les voleurs peuvent poser des pièges, les clercs peuvent lancer Guerre du Chaos, les druides peuvent lancer Métamorphose en loup-garou géant et Invocation d’esprit animal, les morts-vivants peuvent lancer Malédiction, les animaux peuvent lancer Rage bestiale.

[Rééquilibrage des styles d’armes]
Correction d’un bug où le Cercle tournoyant à une main pouvait frapper trois fois de suite.
Correction d’un problème empêchant la configuration du rééquilibrage quand seul le module « Rééquilibrage des styles d’armes » était installé sans le composant « Plus de points de maîtrise ».
Quand la Saisie-projection ou le Crochet échouent à cause d’une Force ennemie trop élevée, un message d’avertissement s’affiche.
La portée du Bouclier-bélier passe de 5 pieds à 4 pieds.
Suppression de la fonction qui affichait l'icône « Héroïsme » sur le portrait du personnage lorsque le rééquilibrage des styles d'armes est actif.
Si vous installez le module spécial adapté à EEex : après avoir investi 5 rangs dans le style à deux armes, non seulement la pénalité d’attaques par round de la main principale est supprimée, mais la main secondaire a 50% (rang 2) / 100% (rang 5) de chances par round d’effectuer une attaque supplémentaire (attaque simulée, nécessite une touche avec une arme valide).
Si vous installez le module spécial adapté à EEex : le Cercle tournoyant ne se déclenche qu’une fois par round (deux fois sous Hâte), appliquant à tous les ennemis dans la zone les effets complets de l’arme (pas seulement les dégâts).
Si vous installez le module spécial adapté à EEex : option pour utiliser les rangs de maîtrise de l’arme pour déterminer la probabilité des effets détaillés des armes.

v0.3
Tous les noms de fichiers ont été modifiés pour commencer par « SY# » afin d’assurer la compatibilité.
Nouveau module : « Augmentation de la CA et des valeurs d’attaque pour toutes les créatures ». Recommandé lorsque le modificateur de CA atteint la limite de -20. Adapté aux versions du jeu offrant plus de moyens de réduire la CA via divers MODs.

[Plateforme d’ajustement global]
Désactivée par défaut, avec des options ajoutées pour l’activer/désactiver manuellement. Tous les modules sont également désactivés par défaut et nécessitent une activation manuelle.
Si le protagoniste est changé dans une partie multijoueur, le bouton de paramètres de la plateforme apparaît sur le nouveau protagoniste.
Le bouton de paramètres de la plateforme peut désormais être utilisé même sous Silence.

[Modificateurs supplémentaires d’Intelligence / Sagesse / Charisme]
Correction du problème où la désactivation manuelle des ajustements supplémentaires pour chanter/danser était inefficace.
L’Intelligence peut désormais modifier la vitesse d’incantation.
Le modificateur de niveau d’incantation, le modificateur de vitesse d’incantation et la résistance à la magie liée à la Sagesse peuvent être configurés séparément.

[Ennemis renforcés (statistiques ennemies liées à l’XP du protagoniste)]
Correction du problème d’augmentation insuffisante des stats ennemies.
Les ennemis gagnent au moins 10/20/50 PV (selon les trois niveaux de difficulté) ainsi que de légères augmentations d’autres stats.

[Rééquilibrage des styles d’armes]
Ne déduit plus automatiquement de points de maîtrise ; activation manuelle requise.
Le Cercle tournoyant ne touche plus les neutres.
L’effet de coup critique pour les armes perforantes a été supprimé (pour éviter de chevaucher d’autres effets critiques), remplacé par saignement et incapacitation.
La Saisie-projection a la priorité sur le Crochet et le Coup étourdissant ; si elle échoue, le Crochet ou le Coup étourdissant peut se déclencher.
En double arme, la probabilité d’effet est réduite mais l’intervalle entre les effets est également plus court.

[Maintien de la difficulté (ennemis montent de niveau avec le protagoniste)]
Réduction du nombre de scripts à modifier, accélération de l’installation.
Légers ajustements des compétences ennemies : les mages gagnent quelques sorts de protection, les morts-vivants gagnent Toucher de goule, etc.

v0.22

[Rééquilibrage des styles d’armes]
Évite les rappels fréquents dans l’environnement EEex : « Vous ne pouvez pas lancer plusieurs instances du même sort de contingence sur vous-même. »

v0.21

[Rééquilibrage des styles d’armes]
Le Bouclier-bélier ne peut pas être lancé par une créature sous Sanctuaire, ni toucher des créatures sous Sanctuaire, Image miroir ou Peau de pierre.
Image miroir protège contre Saisie-projection, Percée, Coup étourdissant, Crochet et Frappe de membres. Peau de pierre/Peau de fer protège contre Percée, Coup étourdissant, Cercle tournoyant et Frappe de membres.

v0.2

[Plateforme d’ajustement global]
Correction du dysfonctionnement de la plateforme sur les cartes où les scripts globaux ne s’exécutent pas.

[Modificateurs supplémentaires d’Intelligence / Sagesse / Charisme]
Correction de l’accumulation involontaire de bonus.
Correction de l’échec des bonus lors des chants/danses.
Le modificateur de CHA du shamane s’applique désormais à la CA pendant les danses (y compris les modificateurs négatifs).

[Statistiques ennemies liées à l’XP du protagoniste]
« Niveau d’amélioration ennemi » = (Niveau d’un guerrier pur avec l’XP du protagoniste) ÷ 2 ; après 8M XP : +1 niveau par 500k XP (max niveau 40 à 18M XP).
Les bonus de stats des ennemis deviennent des effets temporaires de 5 minutes (réappliqués en combat).
Plafond de l’XP par kill : 500 XP par niveau maximum.

[Rééquilibrage des styles d’armes]
Ajout d’une option pour afficher l’icône « Héroïsme » sur le portrait quand actif.
Priorité des effets d’attaque (un seul effet par attaque, quelle que soit la configuration) : Cercle tournoyant > Percée > Frappe de membres > Coup étourdissant > Crochet.
Arme seule : chances d’effet complètes ; bonus de +1/+2 à la CA/THAC0 en combat singulier (aucun ennemi à ≤4 pieds) à ★/★★.
Épée et bouclier : chances d’effet divisées par deux.
Double arme : chances d’effet divisées par deux mais fréquence accrue.
Ajout de dégâts critiques pour les armes perforantes.
Ajout d’un effet « Frappe de membres » pour les masses/bâtons.
Marteaux de guerre : retrait du Crochet (conservent le Coup étourdissant).
Cercle tournoyant : zone circulaire centrée sur l’attaquant (rayon plus grand pour les armes à deux mains), probabilité de déclenchement fixée à 50% pour toutes les épées.
Le Cercle tournoyant ne blesse plus la cible directe, ni ne double les coups sur critique, mais ne réduit plus les dégâts directs.
Crochet : suppression de l’effet d’étourdissement.
La Saisie-projection est légèrement renforcée ; prioritaire dans la séquence d’attaque (peut être suivie d’un Crochet ou d’un Coup étourdissant en cas d’échec).
La Saisie-projection et le Coup étourdissant privilégient désormais la mise au sol plutôt que l’étourdissement, sauf si la cible est immunisée contre l’inconscience. Les cibles inconscientes ne se relèvent pas immédiatement quand elles sont frappées.
Correction du problème où « Désactiver les effets détaillés des armes ennemis » désactivait en réalité les styles d’armes ennemis.
Correction du problème où les classes de voleur ne pouvaient pas effectuer un second jet de sauvegarde contre la mort après un échec de jet contre le souffle face à un Crochet ou une Saisie-projection.

[Les ennemis montent de niveau avec le protagoniste]
Suppression du composant « Correction du bug des jets de sauvegarde pour le mode Héritage de Bhaal » (désormais compatible avec le MOD de correction séparé).
Correction du problème où les niveaux, attaques par round et valeurs de sauvegarde des ennemis ne changeaient pas.
Diverses optimisations mineures.