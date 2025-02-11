#!/bin/bash
import subprocess

nome = input("Qual é o seu nome?")
usuario = nome.lower().strip().replace(" ", "_")

comando = f"useradd {usuario} -m -c '{nome}' -s /bin/bash && echo '{usuario}:senha123' | chpasswd"

processo = subprocess.run(comando, shell=True, capture_output=True, text=True)

if processo.returncode ==0:
	print(f"usuario {usuario} criado com sucesso...")
else:
	print(f"erro ao criar usuario {usuario}...")
	print(processo.stderr)

