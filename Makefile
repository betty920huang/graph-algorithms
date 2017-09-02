SHELL = /bin/sh

CC = gcc
CFLAGS = -Wall

graph_headers = graph_input.h

dijkstras_src = dijkstra.c graph_input.c

prims_src = prim.c graph_input.c

kruskals_src = kruskal.c graph_input.c

.PHONY : all
all : dijkstra prim kruskal

dijkstra : $(dijkstras_src) $(graph_headers)
	$(CC) $(CFLAGS) -o $@ $(dijkstras_src)

prim : $(prims_src) $(graph_headers)
	$(CC) $(CFLAGS) -o $@ $(prims_src)

kruskal : $(kruskals_src) $(graph_headers)
	$(CC) $(CFLAGS) -o $@ $(kruskals_src)
