# Test #2 (Architecture)

Afin de s'assurer que les onboardees soient toujours à jour sur leur parcours d'intégration, votre mission consiste à mettre en place un **système de notification** des tâches en retard.

Une tâche peut être marquée comme `faite` ou `pas faite` et a une `date d'échéance`. Dès la date passée, si elle n'est pas faite elle est considérée en retard.

- (A) Les notifications sont visibles partout dans l'application (à droite sur la navbar) : l'onboardee peut les consulter.
- (B) Les notifications sont envoyées une fois par semaine, le mardi, à l'onboardee par email.

Pars du principe que l'app existe, mais qu'il n'y a rien (ni controlleur, ni librairie, etc.) permettant de gérer les notifications.

**👉 Que dois-tu faire ?**\
Il s'agit de décrire la manière dont tu construirais cette logique de notification (A et B). Tu pourras par exemple proposer un schéma dessiné ou des phrases pour détailler les différents blocs logiques à mettre en place et leur rôle.

Il est important que cette fonctionnalité de notification ralentisse le moins possible le fonctionnement de l'app - le chargement des pages en particulier.

Nous n'attendons pas de code sur cet exercice. Imagine que tu parles de cette fonctionalité à ton manager, sans rentrer dans les détails, tu lui expliques simplement ce que tu vas développer.
---
Bonne chance 💪 !

> Si tu as la moindre question, ✉️ recrutement-tech@workelo.eu

Notification A:<br>

<strong>Fonctionnalité</strong> <br>
Émettre une alerte lorsqu'une tâche est 'faite' ou 'non faite' et a une date d'échéance.
Nous allons introduire un mécanisme pour avertir l'onboardee lorsque une tache change de statut.

<strong>Model</strong> <br>
On crée un Model de Notification avec des references aux users et aux taches. Le modele User has_many notifications, le model tâche belongs_to user et has_one notification.
Le model Notification belongs_to user et belongs_to tâche et une action {faite - pas faite}

<strong>Controller</strong> <br>
Dans le controller des taches on implemente une methode de creation des taches qui creer egalement une notification
Dans le controller des notifications on implemente une methode index des notifications afin de lister toutes les notifications.

<strong>View</strong> <br>
Afin de rendre les notifications visibles partout sur l'application on creer une partial _header.html afin d'implementer cette partial dans la barre de naviguation a cote de l'avatar du user.



<strong>Notification B:</strong> <br>
Pour l'envoi d'email j'utiliserai un Rake Task avec Action Mailer afin de configurer une recurrence dans l'envoi des emails avec le Rake Task et lister toutes les notifications de la semaine par une methode definis dans la class ActionMailer afin que chaque semaine l'onboardee recoivent un email avec les taches faites et non faites et leur date d'échéance.
