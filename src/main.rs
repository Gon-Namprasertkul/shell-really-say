use tts_rust::{ GTTSClient, languages::Languages };
use std::env;

fn main() {
    let mut args = env::args();
    let _ = args.next();
    let text = args.next().expect("No text provided");
    let mut narrator: GTTSClient = GTTSClient {
        volume: 1.0, 
        language: Languages::English, // use the Languages enum
    };
    println!("\n               < {} >\n               /\n___________   /\n( >        ) /\n(  ______  )\n(__________)\n
    ", text);
    narrator.speak(&text);

}