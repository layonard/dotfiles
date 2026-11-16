# Calibration examples

Names and workplace details are anonymized. Each example distinguishes user-authored
wording, explicitly accepted revisions, and unapproved assistant illustrations.
Unapproved illustrations should not become style evidence merely because they are
included here.

## English: a quick update

Context: a coworker asks whether database permissions are working.

User-authored source, with the coworker's name replaced:

> Hey Alex,
> Yes, I was testing them in both databases and their working now. At least!!!

Polished illustration:

> Hey Alex, yes, I tested the permissions in both databases, and they're working now. Finally!

Why: fix grammar and the mistaken expression of relief while preserving a brief,
friendly, enthusiastic update. Do not remove the word `at least` when it actually
introduces a minimum or qualification in another message.

## English: collaborative planning

Context: proposing ownership of a software upgrade and asking how to organize it.
The manager, product, and ticket reference are replaced with neutral placeholders.

User-authored source excerpt:

> Also, [manager] asked me to start creating some issues on Jira to work on, and I was thinking on taking the lead on the [service] upgrade. I've done some initial analysis, but before changing anything, I want to get the projects building and tested locally, understand the data flows, and turn any gaps into a stories.
>
> We talked about [ticket] that is very generic, do you think that is a good start point?
>
> Should we coordinate this with [manager] too?

Polished illustration:

> Also, [manager] asked me to start creating some Jira issues to work on, and I was thinking of taking the lead on the [service] upgrade. I've done some initial analysis, but before changing anything, I want to get the projects building and tested locally, understand the data flows, and turn any gaps into stories.
>
> We talked about [ticket], which is very generic. Do you think that's a good starting point?
>
> Should we coordinate this with [manager] too?

Why: improve expression and readability without changing a proposal into a
decision, claiming the tests already passed, or removing the invitation for input.

## English: coordinating with a manager

Context: replying to a coworker's suggestion about organizing work. The manager's
name is replaced with a neutral placeholder.

User-authored draft:

> I agree. I'm gonna tell [manager] about it. And if it is ok to keep it as story or make it an epic. I want to be aligned to the way of work.

Assistant-polished revision explicitly confirmed as the final response on
2026-10-07:

> I agree. I'll let [manager] know and check whether we should keep it as a story or make it an epic. I want to make sure I'm aligned with how the team organizes the work.

Subsequent explicit feedback: `I'm gonna...` is part of Leonardo's voice. The
accepted revision is evidence that clearer grammar and phrasing are welcome,
not a rule that `I'll` should replace `I'm gonna` in casual English.

Style-preserving illustration incorporating that feedback, not independently
approved wording:

> I agree. I'm gonna let [manager] know and check whether we should keep it as a story or make it an epic. I want to make sure I'm aligned with how the team organizes the work.

Why: preserve the deliberate informal expression while fixing articles, sentence
structure, and idiom. Do not learn the original fragments or missing articles as
intentional style.

## English: chat directly to a manager

Context: explaining the intended organization of upgrade work and asking the
manager to choose between two ticket structures. Names, service name, and ticket
ID are replaced with neutral placeholders. This remains a chat, not an email.

User-provided wording explicitly identified as the final answer on 2026-10-07:

> Hi [manager],I talked with [coworker] about taking the lead on the [service] .Net 10 upgrade. I'm gonna create a separate ticket for each repo/project listed in [ticket]. But, the ticket is a Story not an Epic. Do you think that we should convert it to epic and create stories under it, or keep it as a Story and create subtasks?

What this contributes: conversational context followed by an intended action,
an explicit constraint, and a question with two concrete alternatives. It also
shows the already-confirmed `I'm gonna` preference in manager chat.

The source is preserved to distinguish actual final wording from an assistant
illustration. Continue correcting missing greeting spacing, articles, punctuation,
and `.NET` casing in future drafts. Do not treat this one greeting, sentence
sequence, or ticket terminology as required wording for unrelated messages.
The question is not evidence that the manager approved either alternative.

## English: coworker chat proposing ownership and work breakdown

Context: proposing to lead a broad software upgrade, suggesting an Epic with
smaller stories, and asking a coworker for input. The user explicitly identified
this as his final message on 2026-10-07. It was provided across two consecutive
messages; the split mid-word was joined. Coworker, service, and ticket identifiers
are replaced with neutral placeholders.

User-authored wording (original grammar and punctuation retained as source evidence):

> Hi [coworker],I'm gonna take the lead on the [service] .net 10 upgrade. I've been reviewing the [upgrade ticket] and it is broader than a single story, since it includes several repositories, packages updates, AWS configuration, and testing.I was thinking we could convert it into an Epic and move it under the same parent as its current Epic: [parent ticket]. That will let us break the work into smaller stories, starting with build/test validation for each repository and adding more as we identify gaps.What do you think about it?

What this contributes: direct ownership, a short reason the work needs a larger
container, a concrete first workstream, room to add stories as gaps emerge, and a
direct invitation for the coworker's view. Preserve this collaborative proposal
shape when useful, without treating it as a fixed template or implying approval.
Keep `I'm gonna` where the casual channel suits it. Correct greeting/sentence
spacing, articles, pluralization (`package updates`), punctuation, and `.NET` casing
when polishing. The Jira parent/Epic wording may be ambiguous; verify hierarchy
details rather than copying or silently resolving them from this example.

## English: Jira ticket comment, technical investigation

Context: replying to a teammate who asked for a check on one device that reports
no data. Names, ticket ID, tenant/source IDs, device IDs, VINs, plates, and dates
are replaced with neutral placeholders. Authorship (written vs. AI-assisted) was
not confirmed, so this is weak evidence.

Excerpt (condensed, placeholders only):

> Hi [teammate],
> I checked the tenant source [source ID], named "[source name]".
>
> The tenant source has [N] devices created on [date]:
>
> | Label | remote_id |
> |---|---|
> | [label 1] | [id 1] |
> | [label 2] | [id 2] |
>
> [N-1] of the devices have up-to-date GPS data, so the polling for this tenant source works.
>
> [label 1] has no data at all since it was created. It is probably the vehicle in this ticket, but I can't confirm that because the vehicle name is not in our data.
>
> Why [label 1] could have no data:
>
> The remote_id "[id 1]" is not the real device id of the vehicle. [Reasoning, including what was ruled out.]
>
> The provider is not sending GPS records for that device. [Reasoning.]

What this contributes: greeting plus what was checked, verbatim identifiers, a
table for several records, a one-line conclusion, visible hedging, and causes
under a heading with reasoning. It has no sign-off, question, or next step. Do
not treat this as a template for chat or email.

## Spanish and email

No user-authored examples yet. Do not manufacture examples and label them as
Leonardo's writing. Add minimal anonymized excerpts after his approval.
