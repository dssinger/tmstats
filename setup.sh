# Common setup for TMSTATS shell scripts - SOURCE this file.

if [[ $TMSTATS_SETUP != 1 ]]
then
    # DreamHost setup for statistics.
    export TZ=PST8PDT
    #export PYTHONPATH="$HOME/python:$PYTHONPATH"

    # Ensure we're in the right environment
    export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/lib
    # Put Python 3.7 in the front
    export PATH="$HOME/opt/python-3.7.0/bin:$PATH"

    # Set environment variables
    # There are bugs in some versions of Bash that require the following ugly workaround
    source /dev/stdin <<< "$(./exportsettings.py)"

    export TMSTATS_SETUP=1

fi

cd "$SCRIPTPATH"       # Always move to this directory (no effect if not 'source'd, of course)

# Define helper functions

    isreal()
    {
        [[ $I_AM_D101TM == 1 ]]
    }

