---
title: Architecture
section: advanced
---

## Event-driven

Raindeer is event-driven, but as much as possible these events are created and triggered by the framework itself, hiding the complexity of traditional event-driven applications in order to make the framework easier for the user. See "Aspect-orientated programming" below for more information on how this is achieved.

## Asynchronous

Raindeer runs in Fibers. This can make debugging harder, see: [Debugging](/docs/debugging).

## Composition

## Aspect-orientated programming [FRAMEWORK INTERNAL]

[Abstract-orientated programming](https://en.wikipedia.org/wiki/Aspect-oriented_programming) is larger in scope than what Raindeer makes use of. Primarily Raindeer uses AOP in the sense that *internally* there are "filters" that run before important milestones, mainlyi before an `Event` is created and triggered. This distinction between internal and external framework APIs is important to make. To the framework user (developer) and the application that builds upon it, hooks are exposed as events as much as possible.

Internal "pre-filters" happen at the following stages:
- `LowNode` - The class `render` instantiating the object and calling the instance's `render` method is the *Method Factory* pattern and is essentially a pre-filter
