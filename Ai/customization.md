# AI agent customization

Ref:
- https://code.visualstudio.com/docs/agent-customization/


## How to use

- Provide context: instructions describe coding standards, architecture decisions, and other rules the agent should follow.
  
- Define repeatable work: agent skills and prompt files package task-specific guidance so you don't have to describe the same process in every conversation.
  
- Configure a role: custom agents combine instructions, tools, and a language model into a specialized agent persona.
  
- Add capabilities: MCP servers give the agent tools for interacting with external systems such as databases, browsers, and APIs.
  
- Automate lifecycle actions: hooks run commands at specific points in the agent loop, independent of whether the model chooses to run them.
  
- Adopt a ready-made setup: agent plugins let you install multiple related customization types as one package.
  
- Prompt files (deprecated to skills) : Simplify prompting for common tasks by encoding them as standalone Markdown files that you invoke as slash commands in chat. Each prompt file includes task-specific context and guidelines about how the task should be performed.

- Le Persona (La Posture intellectuelle) : C'est un filtre comportemental ou pédagogique appliqué à l'IA. On modifie son ton, sa méthode d'explication ou son niveau de critique. Un Persona peut habiter un Agent pour changer sa manière de collaborer avec vous.

- Un Custom Agent (souvent appelé Custom Assistant ou simplement Agent) 
  est le niveau supérieur d'intégration de l'IA dans VS Code
  . C'est un expert métier virtuel dédié à un rôle ou à une stack technique bien précise. alors qu'une Instruction est une simple règle et qu'une Skill est un outil technique, un Agent combine des instructions, des outils (skills) et un accès ciblé à des données pour agir de manière autonome comme s'il s'agissait d'un membre de votre équipe


## Exemples
	
- The agent misses a one-time requirement or relevant file: Add the requirement or context to the current request
  
- The agent repeatedly misses a project-wide command, convention, or architecture decision: Add or refine project instructions
  
- The problem only affects certain files, languages, or tasks: Add targeted instructions

- Your team repeatedly explains the same multi-step process: Create an agent skill

- A recurring role needs focused instructions or a restricted tool set: Create a custom agent

- The agent needs to interact with an external system: Add an MCP server

- An action must run at a lifecycle point independently of the model: Configure a hook

- Your team wants to install and maintain a packaged set of customizations: Use an agent plugin


ex:
- Instruction : Imposer des conventions de nommage, l'architecture du projet, des contraintes d'accessibilité (WCAG), ou interdire l'utilisation d'une bibliothèque obsolète. Exemple : "Utilise toujours des composants fonctionnels avec TypeScript. N'utilise jamais useEffect sans commentaires explicatifs." 
- prompt file (deprecated to skills) est un canevas ou un gabarit de texte que vous configurez à l'avance pour éviter d'avoir à réécrire la même requête complexe tous les jours. Vous l'appelez explicitement dans le chat. Idéal pour : Les actions répétitives ciblées sur un fichier (ex: générer la documentation d'une API, use /[nom-du-prompt]


## La hiérarchie IA dans l'éditeur

* Le Prompt est ce que vous dites.
* L'Instruction est le cadre dans lequel l'IA doit rester. (peut configurer un Persona : La personnalité et la posture du travailleur , ex: Il agit comme un mentor patient ou comme un auditeur de sécurité intransigeant)
* Le Skill est l'outil (le marteau, le tournevis) que l'IA sait utiliser.
* L'Agent est l'artisan à qui vous confiez le projet de construction.


## Types de Personas courants en programmation

### Voici des exemples de Personas que vous pouvez configurer (souvent via les Custom Instructions ou dans la définition d'un Agent) pour changer radicalement vos sessions de code :

* Le Senior Architect Acariâtre (Code Reviewer) : Un Persona configuré pour être extrêmement strict. Il ne va pas coder à votre place, mais il va rejeter votre code si les performances ne sont pas optimales, si une variable est mal nommée ou si l'architecture manque de clarté.
* Le Professeur Pédagogue (Junior Companion) : Idéal si vous apprenez un nouveau langage (comme Rust ou Go). Ce Persona n'écrit pas de code brut ; il explique chaque concept avec des analogies, décompose la syntaxe et vous pose des questions pour s'assurer que vous avez compris.
* Le Product Owner / Analyste : Un Persona qui regarde votre code non pas sous l'angle de la syntaxe, mais sous l'angle du business. Il va vous dire : "Ce composant fonctionne, mais as-tu pensé au cas où l'utilisateur clique deux fois très vite ? Qu'en est-il du tracking analytique ?"

### 3 Modèles de Personas à copier-coller

Voici trois configurations de Personas très utiles en développement. Choisissez celle dont vous avez besoin :

1. Le Mentor Pédagogue (Pour apprendre une techno)

    "Act as a patient computer science professor. When I ask questions or share code, do not give me the direct solution. Break down the logic, explain the under-the-hood mechanisms, use simple visual analogies, and end every response with a small question to check my understanding."

2. L'Auditeur de Sécurité Paranoïaque (Pour le code sensible)

    "Act as a paranoid Cyber Security Auditor. Assume every input is malicious, every library is vulnerable, and every network call can fail. Review my code strictly looking for OWASP Top 10 vulnerabilities, memory leaks, and race conditions. Highlight risks in bold."

3. Le Product-Oriented Developer (Pour le prototypage rapide)

    "Act as a Pragmatic Tech Lead & Product Owner. Do not over-engineer. Focus on delivering value quickly. When I propose a complex solution, challenge me to make it simpler. Constantly remind me of edge cases related to user experience (network failures, slow devices, double-clicks)."

