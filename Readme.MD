What is a Phony Target in Makefile?

    **Definition** : A phony target is simply a name for a recipe that is executed when you make an explicit request. It does not represent a file that can be created or updated.
    **Purpose** : By default, Make assumes that targets are files and checks if they are up-to-date based on their timestamps. If a file with the same name as a target exists and is up-to-date, Make will not execute the associated commands. Phony targets bypass this behavior, ensuring that the commands are always run