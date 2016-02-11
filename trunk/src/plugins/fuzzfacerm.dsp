// generated automatically
// DO NOT MODIFY!
declare id "fuzzfacerm";
declare name "Fuzz Face Mayer";
declare category "Fuzz";
declare shortname "FF Mayer";
declare description "Roger Mayer Fuzz Face simulation";
declare insert_p "tranyclipper3";

import("filter.lib");
import("trany.lib");

process = iir((b0/a0,b1/a0,b2/a0,b3/a0),(a1/a0,a2/a0,a3/a0))  with {
    LogPot(a, x) = if(a, (exp(a * x) - 1) / (exp(a) - 1), x);
    Inverted(b, x) = if(b, 1 - x, x);
    s = 0.993;
    fs = float(SR);
    pre = _;
    //clip = tranystage(TB_KT88_68k,86.0,2700.0,5.562895) : tranystage(TB_KT88_68k,86.0,2700.0,5.562895) ;
  
        Fuzz = vslider("Fuzz[name:Fuzz]", 0.5, 0, 1, 0.01) : Inverted(1) : LogPot(0) : smooth(s);
    
        Level = vslider("Level[name:Level]", 0.5, 0, 1, 0.01) : Inverted(1) : LogPot(0) : smooth(s);
    
    b0 = Fuzz*(Fuzz*(4.47934267089816e-14*Level*pow(fs,3) - 4.57075782744711e-14*pow(fs,3)) + 2.1870008532593e-12*Level*pow(fs,3) - 2.23163352373398e-12*pow(fs,3)) + Level*pow(fs,2)*(-2.23179427996828e-12*fs - 2.84573463334658e-11) + pow(fs,2)*(2.27734110200845e-12*fs + 2.90381085035365e-11);

    b1 = Fuzz*(Fuzz*(-1.34380280126945e-13*Level*pow(fs,3) + 1.37122734823413e-13*pow(fs,3)) - 6.5610025597779e-12*Level*pow(fs,3) + 6.69490057120194e-12*pow(fs,3)) + Level*pow(fs,2)*(6.69538283990485e-12*fs + 2.84573463334658e-11) + pow(fs,2)*(-6.83202330602535e-12*fs - 2.90381085035365e-11);

    b2 = Fuzz*(Fuzz*(1.34380280126945e-13*Level*pow(fs,3) - 1.37122734823413e-13*pow(fs,3)) + 6.5610025597779e-12*Level*pow(fs,3) - 6.69490057120194e-12*pow(fs,3)) + Level*pow(fs,2)*(-6.69538283990485e-12*fs + 2.84573463334658e-11) + pow(fs,2)*(6.83202330602535e-12*fs - 2.90381085035365e-11);

    b3 = Fuzz*(Fuzz*(-4.47934267089816e-14*Level*pow(fs,3) + 4.57075782744711e-14*pow(fs,3)) - 2.1870008532593e-12*Level*pow(fs,3) + 2.23163352373398e-12*pow(fs,3)) + Level*pow(fs,2)*(2.23179427996828e-12*fs - 2.84573463334658e-11) + pow(fs,2)*(-2.27734110200845e-12*fs + 2.90381085035365e-11);

    a0 = Fuzz*(Fuzz*(Level*(Level*fs*(fs*(-6.18674104772942e-29*fs - 4.00204457374009e-26) - 2.83832448080453e-29) + fs*(fs*(-1.26259937209307e-31*fs - 2.15993317197785e-28) - 8.68874841067831e-26)) + fs*(fs*(-3.22405119745267e-14*fs - 2.08898268350887e-11) - 2.21793415696022e-11)) + Level*(Level*fs*(fs*(5.85504578964162e-29*fs + 4.00083755606776e-26) + 2.83746860731297e-29) + fs*(fs*(1.19490650740761e-31*fs + 2.08767320417856e-28) + 8.68612838978577e-26)) + fs*(fs*(3.05119726906337e-14*fs + 2.08816997599123e-11) + 2.21726535708769e-11)) + Level*(Level*(fs*(fs*(3.31695258087803e-30*fs + 8.26874714950455e-28) + 5.00406457485288e-25) + 3.54897544287011e-28) + fs*(fs*(6.76928646854567e-33*fs + 8.88886207590151e-30) + 2.81644163364677e-27) + 1.08642105394636e-24) + fs*(fs*(1.72853928389298e-15*fs + 4.32740215906676e-13) + 2.6123111187704e-10) + 2.77325369604093e-10;

    a1 = Fuzz*(Fuzz*(Level*(Level*fs*(fs*(1.85602231431883e-28*fs + 4.00204457374009e-26) - 2.83832448080453e-29) + fs*(fs*(3.78779811627921e-31*fs + 2.15993317197785e-28) - 8.68874841067831e-26)) + fs*(fs*(9.67215359235801e-14*fs + 2.08898268350887e-11) - 2.21793415696022e-11)) + Level*(Level*fs*(fs*(-1.75651373689249e-28*fs - 4.00083755606776e-26) + 2.83746860731297e-29) + fs*(fs*(-3.58471952222284e-31*fs - 2.08767320417856e-28) + 8.68612838978577e-26)) + fs*(fs*(-9.15359180719011e-14*fs - 2.08816997599123e-11) + 2.21726535708769e-11)) + Level*(Level*(fs*(fs*(-9.95085774263408e-30*fs - 8.26874714950455e-28) + 5.00406457485288e-25) + 1.06469263286103e-27) + fs*(fs*(-2.0307859405637e-32*fs - 8.88886207590151e-30) + 2.81644163364677e-27) + 3.25926316183907e-24) + fs*(fs*(-5.18561785167894e-15*fs - 4.32740215906676e-13) + 2.6123111187704e-10) + 8.3197610881228e-10;

    a2 = Fuzz*(Fuzz*(Level*(Level*fs*(fs*(-1.85602231431883e-28*fs + 4.00204457374009e-26) + 2.83832448080453e-29) + fs*(fs*(-3.78779811627921e-31*fs + 2.15993317197785e-28) + 8.68874841067831e-26)) + fs*(fs*(-9.67215359235801e-14*fs + 2.08898268350887e-11) + 2.21793415696022e-11)) + Level*(Level*fs*(fs*(1.75651373689249e-28*fs - 4.00083755606776e-26) - 2.83746860731297e-29) + fs*(fs*(3.58471952222284e-31*fs - 2.08767320417856e-28) - 8.68612838978577e-26)) + fs*(fs*(9.15359180719011e-14*fs - 2.08816997599123e-11) - 2.21726535708769e-11)) + Level*(Level*(fs*(fs*(9.95085774263408e-30*fs - 8.26874714950455e-28) - 5.00406457485288e-25) + 1.06469263286103e-27) + fs*(fs*(2.0307859405637e-32*fs - 8.88886207590151e-30) - 2.81644163364677e-27) + 3.25926316183907e-24) + fs*(fs*(5.18561785167894e-15*fs - 4.32740215906676e-13) - 2.6123111187704e-10) + 8.3197610881228e-10;

    a3 = Fuzz*(Fuzz*(Level*(Level*fs*(fs*(6.18674104772942e-29*fs - 4.00204457374009e-26) + 2.83832448080453e-29) + fs*(fs*(1.26259937209307e-31*fs - 2.15993317197785e-28) + 8.68874841067831e-26)) + fs*(fs*(3.22405119745267e-14*fs - 2.08898268350887e-11) + 2.21793415696022e-11)) + Level*(Level*fs*(fs*(-5.85504578964162e-29*fs + 4.00083755606776e-26) - 2.83746860731297e-29) + fs*(fs*(-1.19490650740761e-31*fs + 2.08767320417856e-28) - 8.68612838978577e-26)) + fs*(fs*(-3.05119726906337e-14*fs + 2.08816997599123e-11) - 2.21726535708769e-11)) + Level*(Level*(fs*(fs*(-3.31695258087803e-30*fs + 8.26874714950455e-28) - 5.00406457485288e-25) + 3.54897544287011e-28) + fs*(fs*(-6.76928646854567e-33*fs + 8.88886207590151e-30) - 2.81644163364677e-27) + 1.08642105394636e-24) + fs*(fs*(-1.72853928389298e-15*fs + 4.32740215906676e-13) - 2.6123111187704e-10) + 2.77325369604093e-10;
};
