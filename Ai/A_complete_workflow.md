# COMPLETE WORKFLOW

🛠️ Scénario "Freemium"

1. Déclencheur : Collez le script généré par Claude dans une ligne Google Sheets.
2. Action 1 : Make détecte la ligne et envoie le texte dans un modèle Google Slides pour générer et exporter la miniature automatiquement.
3. Action 2 : Make envoie un message sur Telegram/Discord avec le script purifié pour le glisser dans CapCut.
4. Action 3 (Une fois la vidéo exportée de CapCut) : Déposer le fichier vidéo dans un dossier Google Drive.
5. Action 4 : Make détecte le nouveau fichier dans Google Drive et l'envoie avec la vignette sur Buffer pour programmer la diffusion sur TikTok, Instagram et YouTube.

### Tools

- Make / n8n auto-hébergé
- CapCut

```shell
curl -fsSL https://get.n8n.io | sh
# or
docker volume create n8n_data
docker run -it --rm --name n8n -p 5678:5678 -v n8n_data:/home/node/.n8n docker.n8n.io/n8nio/n8n
```








-
-
-
-
-
-
-
-
-
-
-
-
-






--------------


🔗 L'architecture de votre automatisation sur Make (100% Gratuit)

• Make (Plan Gratuit) : Vous offre 1 000 opérations gratuites par mois. Cela vous permet de faire tourner environ 10 à 15 automatisations complètes de vidéos par mois si vous optimisez bien vos scénarios.
• Claude (Anthropic) : Vous l'utilisez déjà pour vos prompts. Notez que pour le connecter directement et automatiquement à Make, vous devez passer par l'API d'Anthropic (qui fonctionne au crédit payant, bien que très peu cher). Si vous restez sur la version web gratuite de Claude, cette première étape devra être semi-automatique (copier/coller le script généré par Claude dans un Google Sheets pour déclencher Make).

🖼️ Génération de la Vignette & Visuels (Automatisable & Gratuit)

• Airtable + Bannerbear (ou alternatives) : Bannerbear permet de générer des images de façon 100 % automatisée via Make en injectant le texte de Claude sur un modèle de miniature pré-conçu. Attention : leur forfait gratuit offre un pack de crédits de bienvenue mais n'est pas illimité.
• L'alternative 100% gratuite sur Make : Google Slides : Vous créez un modèle de vignette dans Google Slides avec des balises de texte (ex: {{Titre}}). Make peut remplacer automatiquement ce texte par le titre généré par Claude, exporter la diapositive en PNG, et l'utiliser comme vignette. C'est gratuit et illimité.

🎥 Création et Montage Vidéo (Le compromis "Semi-Auto" Obligatoire)

Aucun outil de montage vidéo pur (comme CapCut) ne propose d'API ouverte et gratuite sur Make pour monter une vidéo de A à Z. Vous devez dissocier cette étape :
• CapCut Desktop ou mobile : Reste l'outil gratuit à vie le plus puissant. L'automatisation complète par Make étant impossible gratuitement, le workflow optimal consiste à ce que Make vous envoie une notification (par Discord ou Telegram) avec le script de Claude prêt à être collé dans la fonction "Texte en vidéo" de CapCut pour générer la vidéo manuellement en 2 clics.

🚀 Planification et Diffusion Automatique (100% Gratuit)

Une fois votre vidéo et votre vignette prêtes, Make peut prendre le relais de manière totalement invisible :
• Buffer : Dispose d'un module officiel sur Make. Le plan gratuit de Buffer vous permet de gérer 3 canaux (YouTube, TikTok, Instagram). Make peut envoyer automatiquement votre fichier vidéo finalisé, votre titre, votre description et votre vignette directement dans la file d'attente de Buffer pour publication.
• Modules natifs de Make : Vous pouvez aussi utiliser directement les modules gratuits YouTube, Facebook Pages (pour les Reels Instagram) et TikTok Business inclus nativement dans Make pour publier sans passer par un outil tiers.
