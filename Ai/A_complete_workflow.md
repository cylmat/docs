# COMPLETE WORKFLOW

🛠️ Scénario "Freemium"

* Déclencheur : Collez le script généré par Claude dans une ligne Google Sheets.
  - Installer n8n self-hosted in docker
    + http://localhost:5678
* Création vidéo : n8n appel l'outil de génération vidéo sur Comfyui.fr
* Action : n8n envoie un message sur Telegram/Discord avec le script purifié pour le glisser dans CapCut.
* Action (Une fois la vidéo exportée de CapCut) : Déposer le fichier vidéo dans un dossier Google Drive.
* Action : n8n détecte le nouveau fichier dans Google Drive et l'envoie avec la vignette sur Buffer pour programmer la diffusion sur TikTok, Instagram et YouTube.
  - Activer Google Drive Api (https://console.cloud.google.com/apis/library/drive.googleapis.com)

Modèle n8n : Claude écrit un script court, ElevenLabs génère la voix, Creatomate produit la vidéo et l’enregistre sur Drive. Nœud de publication (ex Blotato) et contrôles avant diffusion




### Tips

n8n self-hosted
```shell
Workflow n8n idéal pour votre projet vidéo

Dans n8n, vous allez pouvoir créer un scénario visuel identique à Make. Voici comment structurer vos nœuds (nodes) gratuitement :
1. Nœud Déclencheur (Webhook ou Google Sheets) : Vous collez le texte généré par Claude dans un fichier Google Sheets gratuit. n8n détecte instantanément la nouvelle ligne.
2. Nœud Google Slides (Miniature automatique) : n8n récupère le titre rédigé par Claude, l'injecte dans un modèle de présentation Google Slides configuré aux dimensions d'une vignette, puis télécharge le résultat en image (PNG).
3. Nœud d'Attente / Notification (Discord ou Telegram) : Comme aucun logiciel de montage professionnel n'est 100% automatisable par API de façon gratuite, n8n vous envoie un message automatique sur votre Discord ou Telegram privé avec le script de Claude. Vous n'avez plus qu'à faire un copier-coller dans CapCut pour générer la vidéo en 2 clics.
4. Nœud Google Drive / Local (Détection de la vidéo) : Une fois votre vidéo exportée de CapCut, vous la glissez dans un dossier spécifique. n8n repère le fichier vidéo finalisé.
5. Nœud de Publication (YouTube / TikTok) : n8n intègre nativement les connecteurs pour YouTube (via l'API YouTube gratuite pour les développeurs) et pour les réseaux sociaux. Il publie la vidéo et 
```

### Tools

- Ovh Vps (ou Lightsail) avec n8n auto-hébergé
- RunPod Serverless avec Comfyui pour la génération vidéo
- CapCut

```shell
curl -fsSL https://get.n8n.io | sh
# @https://docs.n8n.io/deploy/host-n8n/install-options/install-using-docker-compose 
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
