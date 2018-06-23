# ivory_mirinae

caution: *not ready to use yet* / *in early sketch status*

- mastodon client library
- for dart (vm, flutter)
- to use with my future-loosely-planed mastodon client which will be called as *IvoryHonoo* (TBD)

## What the lib did?

1. [x] register
2. [x] api base class and design
3. [ ] implement methods (entities are implemented when it's required to do so)
    - [ ] accounts
    - [ ] apps
    - [ ] domain blocks
    - [ ] favourites
    - [ ] follow requests
    - [ ] follows
    - [ ] instances
    - [ ] lists
    - [ ] media
    - [ ] mutes
    - [ ] notifications
    - [ ] reports
    - [ ] search
    - [x] statuses
    - [ ] timelines
    - [ ] trends
4. [ ] finish basic apis
5. [ ] streaming
6. [ ] write tests sometime
7. [ ] publish this lib to dart pub

- [x] remove AGPL document comments to be licensed under mit

## misc

- ivory = color of ivory
- mirinae (korean) = milky way

## branches

- sketch -> develop(TODO) -> master(TODO)

## contributing

~~nope~~

ways to support develop my *first* library

- file a issue.
- pull request

when you give any kind of contribution, you're agreeing giving copyright of the contribution to me. It's to prevent copyright related headaches.

## develop

1. install dart dev (2.x.x)
2. pub install
3. open your visual studio code
4. fill your login info at example/blueprint.dart (currently this has only password-grant)
5. run once and remove that id / password info. this generates login info
6. debug

format on save is required if you are not not