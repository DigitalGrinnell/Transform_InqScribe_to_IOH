# Transform_InqScribe_to_IOH

This is a Python 2 script, with GUI, designed to transform oral history transcripts, presumably created using InqScribe, into XML suitable for ingest into the Islandora Oral Histories Solution Pack to populate a TRANSCRIPT datastream and its derivatives.

Once installed you should run the script using a command like the following (you can easily create an alias and use that if you like):

~~~
python /path/to/script/Transform_InqScribe_to_IOH.py
~~~

Doing so should launch a simple GUI like this:


The script reads an XML transcript in a format that can be easily created in, and exported from InqScribe.  The required format should look like the following example where key elements of the data are highlighted for reference:
 
~~~
 <transcript>
  <prologue/>
  <scene id="1" in="00:00:00.21" out="00:00:12.07"><speaker> Heather Riggs </speaker>
Heather | Okay, so.. Yeah, just before we start, if you could each go around and say your name, your class year, and where you live now, just for the microphone.</scene>
  <scene id="2" in="00:00:12.08" out="00:00:18.02"><speaker> Margo Gray </speaker>
Margo | Cool. I’m Margo Gray of the class of 2005, and, what else am I saying?</scene>
  <scene id="3" in="00:00:18.03" out="00:00:19.07">Heather | Your home.

<speaker> Maggie Montanaro </speaker>
Maggie | Where you live.</scene>
  <scene id="4" in="00:00:19.08" out="00:00:21.14">Margo | I live in Chicago, Illinois.</scene>
  <scene id="5" in="00:00:21.15" out="00:00:26.07"><speaker> Jenny Noyce </speaker>
Jenny | My name is Jenny Noyce, the class of 2005 and I live in Oakland, California.</scene>
  <scene id="6" in="00:00:26.08" out="00:00:32.11">Maggie | I’m Maggie Montanaro, also class of 2005, and I live in Avignon, France.</scene>
  <scene id="7" in="00:00:32.12" out="00:00:39.17">Heather | Wow. So, what are your strongest memories of Grinnell?</scene>
  <scene id="8" in="00:00:39.18" out="00:00:45.05">Maggie | Harris Parties.</scene>
  <scene id="9" in="00:00:45.06" out="00:00:53.00">Jenny | Mud sliding in the rain.

Maggie | Yeah, mud wrestling. Mud sliding on Mac Field. Lots and lots of work.</scene>
  <scene id="10" in="00:00:53.01" out="00:01:30.27">Margo | I guess I remember people, like, I still am in touch with a lot of people from Grinnell and yeah. So I don’t, I mean I don’t have like 
these really specific memories of like meeting people, but just mostly, like this whole sort of like pool of memories of times when I was hanging out with people or working with people or, yeah. Building the sort of, you don’t think of it when you’re there, it’s not like, "Ah, I’m building connections to last me!" You’re just like, "I’m hanging out with my friends." But those sort of things tend to last.

Maggie | Lots of good hanging out. 

Margo | Yes.</scene>
  <scene id="11" in="00:01:30.28" out="00:02:01.00">Heather | What kind of Harris parties did you have? Like themed...

Maggie | All the, I assume they still have them, the hall ones like the Haines Underwear Ball, the Mary B. James, Disco... what else? Lots of just themed…

Jenny | They started a fetish party. 

Maggie | Really? They still have fetish?

Jenny | I never went to that one. Maybe I was too close-minded.

Maggie | Yeah.</scene>
  <scene id="12" in="00:02:01.01" out="00:02:18.14">Heather | What are your first memories of Grinnell?

To take advantage of the script's "speaker formatting" capabilities add the following CSS, or something very similar, to your theme.  This CSS produces coloring and formatting like that shown in the example above.

~~~
/* Color, display and font additions for Oral Histories */
div.tier.active span {
  font-weight: bold;
}
div.tier.active span,
div.tier.active span span.oh_speaker_text {
  color: black !important;
}
div.tier.active span span.oh_speaker_text {
  font-weight: normal !important;
}
span.oh_speaker_text {
  color: #ffff00 !important;     /* yellow */
}
span.oh_speaker_1 {
  display: block;
  color: #00ffff;     /* aqua */
}
span.oh_speaker_2 {
  display: block;
  color: #80ff00;     /* bright green */
}
span.oh_speaker_3 {
  display: block;
  color: #ff0000;     /* bright red */
}
span.oh_speaker_4 {
  display: block;
  color: #ff00ff;     /* fuscia */
}
span.oh_speaker_5 {
  display: block;
  color: #ffbf00;     /* orange */
}

