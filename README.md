# ggtd (Gabe's Getting Things Done)

A collection of productivity tools. Human software + computer software. Inspired by David Allen's Getting Things Done (GTD) and other ideas.
Written by a not-particularly-productive person who likes systematization and config tweaking. Maybe a little more meta-work will make the object-work happen automatically ;)

### Includes:
- A set of templates for structuring work into Areas, Projects, and Tasks, and for structuring meta-work into Notes, Questions, and Procedures. See GGTD Templates below.
    - Markdown source is included
    - Build docx using pandoc (for example to upload to Google Drive) with `make issue_templates_docx`

### GGTD Templates
- Area: An ongoing area of responsibility with no clearly defined stopping point
- Note: A note, not yet actionable
- Procedure: A procedure, a routine to be performed repeatedly
- Project: A scope of work with a defined goal, comprised of multiple Tasks
- Question: A question, not yet actionable (other than pondering)
- Task: A single task. Something that can be completed on the order of hours. A scope of work that does not need further breakdown. Always starts with a verb.

### A style of Org-mode
- Rather than prefixing with TODO state (e.g. TODO, STARTED, MAYBE, DONE; as is typical in org mode), items are prefixed with their type (Area: , Note: , Proc: , Proj: , Ques: , Task: ).
- Why do it this way?:
  - Most _actionable_ things that I would like to keep track of are TODOs (otherwise why would I track them), so knowing that they are `Task:`'s is sufficient.
  - The boundary between `TODO` and `MAYBE` is not something I have found myself able to define. If I had more time, the MAYBEs would become TODOs. Tracking the distinction is not very useful to me.
  - DONE tasks crowd the view rather quickly. I rarely want to have a DONE task in my field of view, except for a minority of cases where I can't remember if I did it or not (in this case I don't mind going to an .org_archive file to check). I use archiving plus an org tag to indicate that something is done.
  - It's not hard for me to keep track of what has STARTED.
  - Questions are a first-class citizen in Uncertainty Work.
  - The typical TODO progression does not indicate size of scope. Projects can be TODO, or STARTED but they last for months. Seeing `TODO buy coffee` and `TODO write big software library` blurs the boundary of what is an action and what is a project. In the spirit of getting clear on small, discrete next actions (something that I like about GTD), I avoid blurring this boundary.

### Will hopefully include in the future:
- Compatibility layer between git+GitHub Issues+GitHub Projects and Emacs org-mode
- Human software and templates for [Uncertainty Work](./uncertainty_work.md), an area where I feel that the original GTD lacks specific advice
- Tools for time and project management
- Tools for decision-making

### Influences:
- Getting Things Done -- David Allen
- How to Measure Anything -- Douglas W. Hubbard
- Farnam Street Decision Journal template https://fs.blog/wp-content/uploads/2017/02/decision-journal_draft3.pdf
