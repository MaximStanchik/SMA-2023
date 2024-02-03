#pragma once
#include "stdafx.h"
#include "LexAnalysis.h"
#include "Error.h"

namespace Polish
{
	bool PolishNotation(int i, Lexis::LEX& lex);
	void StartPolish(Lexis::LEX& lex);

}