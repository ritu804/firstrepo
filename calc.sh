#!/bin/bash


_#include<stdio.h>_
_#include<unistd.h>_ 
_#include<sys/wait.h>_ 
_#include<sys/types.h>_ 

_int main()_ 
_{_ 
	_int i;_ 
	_int pid = fork();_ 

	_if (pid == 0)_ 
	_{_ 
		_for (i=0; i<20; i++)_ 
			_printf("I am Child\n");_ 
	_}_ 
	_else_
	_{_ 
		_printf("I am Parent\n");_ 
		_while(1);_ 
	_}_ 
_}_ 



 
