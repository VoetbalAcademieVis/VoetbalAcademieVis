import React from "react"; import { BrowserRouter as Router, Routes, Route, Link } from "react-router-dom"; import { Card, CardContent } from "@/components/ui/card"; import { Button } from "@/components/ui/button";

function Home() { return ( <div className="p-6 text-center"> <h1 className="text-3xl font-bold text-red-600">VoetbalAcademie VIS</h1> <p className="mt-2 text-gray-700">Welkom bij jouw persoonlijke trainingsplatform</p> </div> ); }

function Videos() { return ( <div className="p-4"> <h2 className="text-2xl font-semibold mb-4">Trainingsvideo's</h2> <Card className="mb-4"> <CardContent> <iframe
className="w-full aspect-video"
src="https://www.youtube.com/embed/dQw4w9WgXcQ"
title="Voorbeeldvideo"
frameBorder="0"
allowFullScreen
></iframe> </CardContent> </Card> </div> ); }

function Goals() { return ( <div className="p-4"> <h2 className="text-2xl font-semibold mb-4">Trainingsdoelen</h2> <p className="text-gray-600">Hier kun je per speler doelen instellen (later uitbreiden met Firebase).</p> </div> ); }

function Progress() { return ( <div className="p-4"> <h2 className="text-2xl font

