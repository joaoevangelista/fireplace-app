# Usage

## Users

  The primary layer of security and identification on the application are users.
  Users represent a real person on the system, so each of people working with the
  system is a potential user.

  Users are identified by an unique email, and can access their correspondent data
  based on the roles assigned to them.


### Starting with

Since registration is protected to only users with **Master** role, you will have
a default user with enough access to create a new one, but please, change it's
password for security since it is a default password known by everyone.

To create a new user head to *Sign In* option on navigation bar, then enter your
credentials on the correspondents fields, and submit. You will be redirected to
home when succeeds.

### Creating Users


Assuming you already signed in with a **Master** role account, head to the *Manage*
menu on navigation and select *New User*, you will be headed to registration form
where you can create a new user.

## Roles

Current set of roles available as seed are:

  - Master
  - Ranger
  - Watcher
  - Adventurer

The Master role are is administration one, it provides access to every thing on
the application including administration tasks on users, such create and edit
profiles.

Others rules are identifying ones and does not permit creation or edition of
user accounts.

## Incidents

Incidents are any trouble caused on the parks, such as drunken people, fireworks
illegal fireplaces, any harm to the nature.

It can be reported by anyone logged into the application, it can be either
reported by the watcher who spotted the incident or a person who found and
reported to the park employees.

### Creating new Incidents

They can be created on the menu **Incidents** on navigation bar, that link will
lead you to the form, there you can fill with all the details about the problem
occurred and can add a location so you can keep a record of where those events
occurred and prevent them to appear there again.

!!! note
    You need to be signed in to report new incidents

### Managing

On the list view of all incidents, you can delete them and open the edition form
with a single click. Both procedures should feel natural to you.

!!! note
    You need to be Master to delete an incident and signed in to edit

## Incident Types

Each incident needs a type to be classified, here you can manage them, they
consist with only a name, that tells what was about the incident, such as:
*Fireworks*, *Lost Person*, *Fireplace*

### Creating Types

  To create a new type you need to head to the Incident Types option on Incident
  menu located at navigation bar. From there you can see a list of
  types already created and a link that will lead you to the form.

  Fill the form with the name you want to describe the incident and save it.

  We provide a handful of types from the seeds, that will can use or remove them
  if you are using another locale for example.

!!! note
    You need to be signed in to create new types

### Managing

  As the other resources we can edit types by heading to the list view and
  clicking on the edit pencil button, this will lead you to edition form.

  To remove a type, you need to be a **Master**, just click on the times link.


!!! note
    You need to be signed in to edit types

    And have **Master** role to remove them.

!!! important
    After removing, the incidents with the removed type will lack the type and
    will need to be edited and assigned a new one.

## Fire

When things gone wild and bad, we need to keep track of them, there is the Fire
resource. It is intended to be used when watchers, mostly, spot fires starting
or ongoing, they can report to the system to keep the record of them
with information such as: the severity, when it occurred and where.

### Reporting fires

To report a fire head to the Report Fire option under Fires menu, there you will
be lead to a form where you can fill with all the details you know about the fire.

!!! danger
    Report first to the competent authorities first and alert the Fireman first.

!!! note
    You need to be signed in to report a new fire.

### Managing

You can edit reports like any another resource, just click on the pencil icon on
list view and you will be sent to edit form, from there you can save and/or see
the full report.

!!! note
    To remove a fire you will need a **Master** account.

## Severity Level

Severity types categorizes the fires, according to the damage it caused or have
potential to cause.

They have a name and a color to easily identify them among the others, assign
them on the report of a fire and not inside level page.

### Creating a Level

To create a new level you need to head to the Severity Level option on Fires
menu located at navigation bar. From there you can see a list of
types already created and a link that will lead you to the form.

Click on the link and you be headed to form, fill with the name, small names are
better, and a descriptive color, reflecting the severity (red for dangerous,
green for good)

 !!! note
     To create you will need to be signed in.

### Managing

  As the other resources we can edit types by heading to the list view and
  clicking on the edit pencil button, this will lead you to edition form.

  To remove a type, you need to be a **Master**, just click on the times link.

  !!! note
      To edit a level you need to signed in

      To remove a level you need a **Master** account.
