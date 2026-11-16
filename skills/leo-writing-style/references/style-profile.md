# Style profile

Version: 5
Created: 2026-10-06
Updated: 2026-11-16

## Confirmed preferences

Source: Leonardo's explicit instructions during skill creation and later feedback.

- Support both English and Spanish. Spanish is his native language, and his
  writing voice differs between the two languages.
- Keep natural wording and tone while correcting grammar, spelling, and
  punctuation in either language.
- Polish word choice and expressions as well. He welcomes replacing wording
  that is awkward or mistaken, such as confusing `at least` with `at last` when
  expressing relief. This is permission to improve expression, not to alter intent.
- Improve through approved feedback over time. Do not claim passive learning.

## English: coworker chat

### Confirmed casual-English preference

Source: explicit feedback on 2026-10-07, following a user-authored draft and an
assistant revision that Leonardo confirmed as his final response.

- `I'm gonna...` is a natural part of his casual English voice. Preserve it when
  polishing his draft, and use it when natural in a casual reply. It is informal
  wording, not an error to remove just because the text is being polished.
- Correct the misspelling `goona` to `gonna`; continue correcting surrounding
  grammar, spelling, and awkward expressions.
- Do not mechanically replace it with `I'll` or `I'm going to`. These alternatives
  remain acceptable: the accepted final reply used `I'll`. Do not insert `gonna`
  into every future-tense sentence or use it where the meaning is unsuitable.
- Scope this preference to casual English. It can apply to informal email when
  that register is appropriate, but is not a rule for formal emails or Spanish.
  Honor explicit requests for more formal wording.

### Tentative patterns

Evidence: the initial user-provided conversation with a development partner,
follow-up drafts, an explicitly accepted assistant-polished reply, and user-identified
final chat messages to a coworker and manager.
The patterns below remain tentative observations, not confirmed universal rules.

- Friendly, brief openings when appropriate, followed quickly by the topic.
- Direct, conversational wording and ordinary contractions.
- Short exchanges for troubleshooting; fuller context for planning and coordination.
- Collaborative proposals: explain the thinking, then invite the coworker's view.
  Phrases such as `I was thinking...`, `Do you think...?`, and `Should we...?`
  illustrate this, but are not required in every message.
- When proposing ownership of a broad effort, a natural pattern is to state the
  intended ownership, briefly explain why the scope exceeds one story, suggest a
  hierarchy with a concrete first step, and leave room for follow-up work as gaps
  emerge. End with a direct invitation for the coworker's view. Keep it a proposal,
  not an implied decision; this is an observed pattern, not a required template.
- Make uncertainty visible rather than presenting assumptions as established facts.
- Retain technical terms when relevant to the recipient, without adding jargon.
- Some enthusiasm is natural. Do not infer a fixed punctuation or emoji habit
  from this one conversation, and do not reproduce accidental grammar errors.

### Manager-chat example (tentative)

Evidence: Leonardo's final English chat wording supplied on 2026-10-07.
This is one manager-directed example, not a universal template or email evidence.

- Use a brief greeting and relevant conversational context, then state the planned
  action. In this example, he mentions discussing the work with a coworker before
  explaining what he intends to do.
- Keep a practical constraint explicit when useful. A short contrast such as
  `But the ticket is a story, not an epic` can sound natural; polishing does not
  require merging every sentence or replacing ordinary transitions with formal ones.
- Invite the manager's input through a concrete choice: `Do you think we should
  [option A], or [option B]?` This reinforces the collaborative questioning seen
  in coworker chat, without making the wording mandatory.
- The example uses `I'm gonna` in a chat to his manager as well as to a coworker.
  Apply the existing casual-English preference; a manager recipient alone is not
  a reason to formalize his voice automatically.
- Keep correcting greeting spacing, articles, punctuation, and technical casing
  such as `.NET`. Saving final wording is not approval to reproduce its incidental
  errors, nor proof that he rejects other grammatically polished alternatives.

### Coworker-chat example: proposing ownership and breaking down work (tentative)

Evidence: Leonardo identified this as his final message to a coworker on 2026-10-07.
It is anonymized below; the sentence split across two consecutive messages has
been joined. Original grammar and punctuation are retained as style evidence, not
as forms to reproduce.

> Hi [coworker],I'm gonna take the lead on the [service] .net 10 upgrade. I've been reviewing the [upgrade ticket] and it is broader than a single story, since it includes several repositories, packages updates, AWS configuration, and testing.I was thinking we could convert it into an Epic and move it under the same parent as its current Epic: [parent ticket]. That will let us break the work into smaller stories, starting with build/test validation for each repository and adding more as we identify gaps.What do you think about it?

What this contributes: direct ownership, a brief rationale for a larger work
container, a practical first set of stories, room to add work as discoveries arise,
and a clear invitation for feedback. Preserve the casual `I'm gonna` phrasing when
it suits the channel. Continue correcting spacing, sentence boundaries, articles,
pluralization, and `.NET` casing. Do not infer Jira hierarchy or convert a proposal
into an approved decision from this example; check unclear parent/epic details.

## English: Jira ticket comments, technical investigation (tentative)

Evidence: one comment Leonardo posted on a support ticket on 2026-11-16, replying
to a teammate's request to check a specific record. Authorship was not confirmed
(it may have been AI-drafted or edited), so treat this as weak, single-example
evidence. Inferred, not an explicit preference.

- Open with a short greeting and the teammate's name, then say what was checked
  (`I checked [record]...`).
- State facts first. Quote identifiers and values verbatim (IDs, labels, dates,
  counts); never paraphrase or invent them.
- Use a small table when listing several records, followed by a one-line result
  (for example, how many are healthy and what that implies).
- Keep verified facts and inference apart. Hedge explicitly (`probably`, `I can't
  confirm that because...`) rather than presenting a guess as fact.
- Give possible causes under a short heading, each as a brief paragraph that
  includes its reasoning or what was ruled out.
- Plain, short sentences with ordinary contractions. No sign-off, no closing
  question and no stated next step in this example. Do not add them unless the
  user asks, and do not drop them from chat proposals because of this example.
- `I'm gonna` has no evidence here. Keep that preference scoped to casual chat.

## Spanish: provisional

No Spanish writing example has been provided yet. Native language is not evidence
of a specific dialect, vocabulary, formality level, or greeting/sign-off habit.

- Apply the confirmed polishing preferences, using natural Spanish rather than
  literal English syntax or translated English stylistic habits.
- Match the register, regional wording, and form of address in the user's draft
  when supplied. Otherwise use broadly understandable Spanish appropriate to
  the relationship; ask about tu/usted only if it materially affects the message.
- Do not claim to have captured Leonardo's Spanish voice until examples or
  explicit feedback support it. Do not add a disclaimer to every outgoing draft.

## Email: provisional in both languages

No user-authored email example has been provided yet. Use the confirmed
preferences and the requested relationship/formality. Friendly professional
wording is a fallback, not a learned email signature. Avoid stock ceremonial
openings, invented sign-offs, and unnecessary corporate phrasing.

## Evidence and scope

- Explicit instructions outrank inferred patterns; current task instructions
  outrank saved defaults.
- Do not use Leonardo's messages to the assistant as voice samples unless he
  explicitly asks to learn from them. They may be task instructions, not outgoing
  communication in the target setting.
- Keep language, channel, and audience scope with every new preference.
- Distinguish spelling mistakes from deliberate informal phrasing. Improve
  clarity without changing certainty, responsibility, or interpersonal intent.
