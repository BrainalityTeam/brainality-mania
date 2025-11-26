package backend;

class MusicState extends FlxState
{
    public var currentStep = 0.0;
    public var currentBeat = 0.0;
    public var currentSection = 0.0;
    public var currentBPM = 120.0;
    //var bpmMap = new Map<Float, Float>(); // song time > BPM

    public var time = 0.0;

    private var prevStepInt = 0;
    private var prevBeatInt = 0;
    private var prevSectionInt = 0;

    override public function new()
    {
        //bpmMap.set(0, currentBPM);
        super();
    }

    public function stepHit() {}
    public function beatHit() {}
    public function sectionHit() {}

    override public function update(elapsed:Float)
    {
        super.update(elapsed);
        time += elapsed;

        var bpm = currentBPM;
        //for (beatTime in bpmMap.keys())
            //if (time >= beatTime) bpm = bpmMap.get(beatTime);

        var spb = 60 / bpm;

        currentBeat = time / spb;
        currentStep = currentBeat * 4;
        currentSection = currentBeat / 4;

        var stepInt = Math.floor(currentStep);
        var beatInt = Math.floor(currentBeat);
        var sectionInt = Math.floor(currentSection);

        if (stepInt != prevStepInt) stepHit();
        if (beatInt != prevBeatInt) beatHit();
        if (sectionInt != prevSectionInt) sectionHit();

        prevStepInt = stepInt;
        prevBeatInt = beatInt;
        prevSectionInt = sectionInt;
    }
}
