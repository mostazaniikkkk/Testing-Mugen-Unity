using System;
using System.Collections;
using System.Collections.Generic;
using System.Diagnostics;
using UnityEngine;

public class OpenMugen{
    //Archivo .exe del mugen
    public string directory = @"C:\Program Files (x86)\mugen-1.1b1\mugen.exe";
    public string exeName = "";

    //Datos de la pelea
    public string char1 = "kfm";
    public string char2 = "kfm";
    public string stage = "stage0-720";
    public string log;
    public int rounds = 2;

    //Ejecuta mugen
    public void MugenStart(){
        //Acortan la string del process start
        string cP1 = " -p1 " + '\u0022' + char1 + '\u0022';
        string cP2 = " -p2 " + '\u0022' + char2 + '\u0022';
        string cRounds = " -rounds " + rounds;
        string cStage = " -s " + '\u0022' + stage + '\u0022';
        try{
            Process.Start(directory, cP1 + cP2 + cRounds + cStage);
            UnityEngine.Debug.Log("Motor ah sido encontrado");
        }
        catch{
            UnityEngine.Debug.Log("Error 00: No se ah encontrado el motor");
        }
    }
}