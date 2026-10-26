# CLAUDE.md

Lab guide for the course "Implementing and administering SharePoint Online and OneDrive for Business". All content is Markdown in English (US). Follow these conventions when creating or editing files.

## Reference material

Use the files in this folder as the reference for course content, especially the current PowerPoint slides (module structure, terminology, practices and labs linked from the slides):

`C:\Users\RomanKorecky\OneDrive - Easy On\Geschäft\Produktion\Training\Seminarunterlagen\Microsoft\Modern Work\SharePoint Online Administrator`

- Current slides: subfolder `SharePoint Online Administrator\` with numbered module decks (`00 Titel und Agenda.pptx`, `01 Introduction.pptx`, … `13 Planning.pptx`).
- Outdated, do not use as reference: `Old slides\`, `SharePoint Online Administrator\_Alter Master\`, `labs\`, `labs.zip`.
- Always use the most recent slide decks; when slides and lab instructions differ, the slides are authoritative.
- If the folder cannot be accessed, ask the user for the relevant files instead of guessing.

## Repository structure

| Folder | Content | File name pattern |
| ------ | ------- | ----------------- |
| `Instructions/Labs/` | Labs, performed by participants alone | Imperative, e.g. `Manage-permissions.md` |
| `Instructions/Practices/` | Practices, demonstrated by the instructor | Imperative, e.g. `Configure-sharing-settings.md` |
| `Instructions/General/` | Reusable how-to instructions, linked from labs | Gerund, e.g. `Creating-a-list.md`, `Managing-site-groups.md` |
| `Instructor/` | Notes for instructors | |
| `images/` | Screenshots referenced as figures | lowercase-with-hyphens, e.g. `teams-new-channel.jpeg` |

File names: words separated by hyphens, first word capitalized, product names keep their capitalization (`Install-Microsoft-Graph-Beta-PowerShell-module.md`). The H1 heading equals the file name with spaces instead of hyphens.

## Document templates

### Lab (`Instructions/Labs/`)

```markdown
# Lab: <Title>

## Setup

<Machine, sign-in, and catch-up scripts for skipped labs>

## Introduction

<Contoso scenario: what Contoso wants and why>

## Exercises

1. [<Exercise title>](#exercise-1-<anchor>)
1. ...

## Exercise 1: <Title>

<Either numbered steps directly, or an overview list linking to tasks:>

1. [<Task title>](#task-1-<anchor>) <additional parameters>

### Task 1: <Title>

Perform this task on WIN1.

1. ...

[figure 1]: /images/<file>.png
```

- Optional H4 subsections inside a task for alternative methods: `#### Web UI`, `#### PowerShell`.
- Each task is self-contained: it starts with opening the browser/tool, navigating, and signing in again (e.g. `1. Open **Microsoft Edge**.` / `1. In Microsoft Edge, navigate to **https://admin.microsoft.com**.` / `1. Sign in as **LynneR@\<your tenant\>.onmicrosoft.com**.`).
- Catch-up sentence for skipped labs (use verbatim):
  `If you skipped Lab [Get started with SharePoint administration](/Instructions/Labs/Get-started-with-SharePoint-administration.md), in **PowerShell** or **Windows PowerShell**, execute **C:\LabResources\Solutions\Start-SharePointAndTeamsConfiguration.ps1**. If you are asked to sign in, use the global administrator credentials of your tenant.`

### Practice (`Instructions/Practices/`)

```markdown
# Practice: <Title>

## Setup          (optional)

## Introduction   (optional)

## Task

<Short description of the goal, often as a bullet list of requirements>

## Instructions

Perform this task on WIN1.

1. Sign in to **WIN1** as **Administrator**.
1. ...
```

### General instruction (`Instructions/General/`)

```markdown
# <Gerund title, e.g. Creating a list>

<Either numbered steps directly, or H2 sections per method/sub-procedure:>

## Web UI            (or: SharePoint admin center, Desktop experience, ...)

## PowerShell        (or: PnP PowerShell module, SharePoint Online module, Windows PowerShell)

## References

[<Page title> | Microsoft Learn](https://learn.microsoft.com/en-us/...)

[<Next reference>](...)
```

- Always end with `## References` (plural); each link on its own paragraph separated by blank lines; link text = the page title of the target page.
- Steps are generic (no fixed lab values); use placeholders such as `\<Group name\>`.

## Formatting rules

### Lists

- Numbered lists always use `1.` for every item (auto-numbering), never `2.`, `3.`.
- Bullet lists use `*`, not `-`.
- Nested content (sub-lists, code blocks, tables, notes, links to General instructions) is indented by **4 spaces** and separated from the surrounding step by blank lines.
- Explanations, expected results, and verifications after a step are indented paragraphs (4 spaces) below the step, e.g. `Verify that Debra has the permission level Edit.`

### Step wording

- Imperative, one action per step, with location context first: `In <window/page/panel>, <action> **<UI element>**.`
  - `In SharePoint admin center, click **Active sites**.`
  - `In Create Group, under **Name**, type **News _ Contoso Approvers**. Click **Create**.`
- Multiple clicks in one path: `click **Show all** and **SharePoint**` or `click **Sites**, **Active sites**`.
- Verbs: *click*, *type*, *select*, *activate*/*deactivate* (checkboxes, switches), *find and click* (people pickers/search), *navigate to*, *execute* (scripts).
- Icons without text are in italics with a hint: `click the *Settings* icon (the gear icon)`.
- Window/dialog names in the location part are **not** bold; names of message boxes are quoted verbatim without quotes: `In the message box Remove as site owners?, click **Remove**.`

### Bold

Bold (`**...**`) for everything the user clicks, types, selects, or must recognize exactly: UI elements, values to enter, site/list/user names in instructions, app names (**Microsoft Edge**, **PowerShell**), machine names (**WIN1**), accounts, URLs to navigate to, file paths to execute.

### Placeholders and escaping

- Placeholders in angle brackets, escaped with backslashes: `\<your tenant\>`, e.g. `**https://\<your tenant\>.sharepoint.com/sites/news**`, `**admin@\<your tenant\>.onmicrosoft.com**`.
- Escape asterisks in literal text: `**Word Template (\*.dotx)**`.

### Code

- Code blocks use **four backticks** with language identifier: ````` ````powershell `````.
- Code blocks inside steps are indented by 4 spaces.
- Values the user must fill in are empty strings with an explanatory comment:
  `$tenantName = '' # Between the quotes insert your tenant name`
- Longer explanations in code use block comments `<# ... #>`.
- Long cmdlet calls are split with backtick line continuation, one parameter per line, using `-Parameter:$value` syntax.
- PowerShell procedures end with a disconnect step (`Disconnect-SPOService`, `Disconnect-PnPOnline`).

### Links

- Links to General instructions from labs/practices: relative path, on its own indented paragraph below the step:

  ```markdown
  1. Add **Lynne Robbins** to the **Site Owners** group of **Brand Guide**.

      [Managing site groups](../General/Managing-site-groups.md)
  ```

- Links to other labs in Setup sections: repository-absolute path `/Instructions/Labs/<File>.md`.
- In-document anchors: GitHub style, lowercase, spaces → hyphens, punctuation removed: `#exercise-1-manage-site-permissions`, `#task-2-create-sharepoint-groups`.

### Figures

- Reference-style images: `![<Alt text describing the screenshot>][figure 1]`, indented when inside a step.
- In text: `like in [figure 1]`.
- Definitions at the end of the file, lowercase `figure`, preferably repository-absolute paths:
  `[figure 1]: /images/permissions-content-scheduler.png`

### Tables

- Pipe tables with header separator; columns padded with spaces for alignment in the source.
- Used for lists of values to enter (sites, groups, colors, users and expected results).

### Notes

- Notes as separate (indented if inside a step) paragraph: `*Note:* ...` or `*Important:* ...` (italic label). No GitHub admonitions (`> [!NOTE]`).

### General

- Headings: `#` H1 once per file, then `##`, `###`, `####`; blank line before and after each heading.
- Blank line between paragraphs and around lists, tables, and code blocks.
- Files end with a single newline.
- Scenario company is **Contoso**; standard users are e.g. Lynne Robbins (`LynneR`), Debra Berger, Irvin Sayers, Adele Vance, Patti Fernandez; lab machine is **WIN1**.
- Scripts used in setup steps live under `C:\LabResources\Solutions\`.
