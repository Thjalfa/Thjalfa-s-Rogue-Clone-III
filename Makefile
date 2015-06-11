#	@(#)Makefile	8.1 (Berkeley) 5/31/93
# $FreeBSD: src/games/rogue/Makefile,v 1.8 2001/01/25 12:24:29 phantom Exp $

rogue: hit.o init.o inventory.o level.o machdep.o main.o message.o monster.o move.o object.o pack.o play.o random.o ring.o room.o save.o score.o spec_hit.o throw.o trap.o use.o zap.o

	cc -g -o rogue hit.o init.o inventory.o level.o machdep.o main.o message.o monster.o move.o object.o pack.o play.o random.o ring.o room.o save.o score.o spec_hit.o throw.o trap.o use.o zap.o -lcurses

hit.o: hit.c
	cc -c hit.c

init.o: init.c
	cc -c -g init.c

inventory.o: inventory.c
	cc -c -g inventory.c

level.o: level.c
	cc -c level.c

machdep.o: machdep.c pathnames.h
	cc -c machdep.c

main.o: main.c
	cc -c main.c

message.o: message.c
	cc -c message.c

monster.o: monster.c
	cc -c monster.c

move.o: move.c
	cc -c move.c

object.o: object.c
	cc -c -g object.c

pack.o: pack.c
	cc -c pack.c

play.o: play.c 
	cc -c play.c

random.o: random.c
	cc -c random.c

ring.o: ring.c
	cc -c ring.c

room.o: room.c
	cc -c room.c

save.o: save.c
	cc -g -c save.c

score.o: score.c pathnames.h
	cc -g -c score.c

spec_hit.o: spec_hit.c
	cc -c spec_hit.c

throw.o: throw.c
	cc -c throw.c

trap.o: trap.c
	cc -c trap.c

use.o: use.c
	cc -c use.c

zap.o: zap.c
	cc -c zap.c


