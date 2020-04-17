using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TestCode : MonoBehaviour{
    public OpenMugen engine  = new OpenMugen();
    public string jugador1;
    public string jugador2;
    public string escenario;
    public string programa;
    public int rounds;
    void Start(){
        engine.exeName = programa;
        engine.char1 = jugador1;
        engine.char2 = jugador2;
        engine.stage = escenario;
        engine.rounds = rounds;
        engine.MugenStart();
    }
}
