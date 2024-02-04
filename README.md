# Simple Helloworld Project created with 0D Series and Parallel

usage: make
output should be:

--- Outputs ---
[{«»: Hello World},
{«»: Hello World},
{«»: Hello World}]


--- done ---

## explanation of output: 

see the source code in `helloworld0d.drawio`

The startup file `main.odin` injects the message "Hello World" into the input port. The message is routed to the front of the Sequential pipeline and to the front of the Parallel pipeline.

The `Echo` component, in this very simple example, sends its input, as is, to its no-name output. 

The Sequential pipeline routes the message into the `Echo` component which outputs into another `Echo` component which finally outputs the result to the `«»` output port. (Note that the `«»` input port is distinct from the `«»` output port). 

The Parallel pipeline routes the message into two parallel instances of the `Echo` component. Each of these simply echoes its input to its output (as above), but, the outputs go to the no-name output of the main Container at slightly different moments in time (the order is arbitrary).

Hence, we see 3 output messages to port `«»` (no-name, "" in ASCII). 1 of those is from the Sequential pipeline. 2 of those are from the Parallel pipeline.

Note that, in UNIX, the no-name input port would be called `stdin` and the no-name output port would be called `stdout`. 0D components can have 0 or more input ports and 0 or more output ports. This simple example doesn't include an output port for failure, but, if it did, it would probably have the name `✗`.


