function [DraftYear, position, heightfeet, heightinches, heightinchestotal, weight, arms, hands, fortyyd, twentyyd, tenyd, twentyss, threecone, vertical, broad, bench1, nflgrade, college, VarName19] = importFileCombine(filename, dataLines)
%IMPORTFILE Import data from a text file
%  [DRAFTYEAR, POSITION, HEIGHTFEET, HEIGHTINCHES, HEIGHTINCHESTOTAL,
%  WEIGHT, ARMS, HANDS, FORTYYD, TWENTYYD, TENYD, TWENTYSS, THREECONE,
%  VERTICAL, BROAD, BENCH1, NFLGRADE, COLLEGE, VARNAME19] =
%  IMPORTFILE(FILENAME) reads data from text file FILENAME for the
%  default selection.  Returns the data as column vectors.
%
%  [DRAFTYEAR, POSITION, HEIGHTFEET, HEIGHTINCHES, HEIGHTINCHESTOTAL,
%  WEIGHT, ARMS, HANDS, FORTYYD, TWENTYYD, TENYD, TWENTYSS, THREECONE,
%  VERTICAL, BROAD, BENCH1, NFLGRADE, COLLEGE, VARNAME19] =
%  IMPORTFILE(FILE, DATALINES) reads data for the specified row
%  interval(s) of text file FILENAME. Specify DATALINES as a positive
%  scalar integer or a N-by-2 array of positive scalar integers for
%  dis-contiguous row intervals.
%
%  Example:
%  [DraftYear, position, heightfeet, heightinches, heightinchestotal, weight, arms, hands, fortyyd, twentyyd, tenyd, twentyss, threecone, vertical, broad, bench1, nflgrade, college, VarName19] = importfile("/Users/rjhorn/Documents/GitHub/RileyHornAssignments/assignment4/combine_all.csv", [1, Inf]);
%
%  See also READTABLE.
%
% Auto-generated by MATLAB on 22-Oct-2019 11:53:17

%% Input handling

% If dataLines is not specified, define defaults
if nargin < 2
    dataLines = [1, Inf];
end

%% Setup the Import Options
opts = delimitedTextImportOptions("NumVariables", 19);

% Specify range and delimiter
opts.DataLines = dataLines;
opts.Delimiter = ",";

% Specify column names and types
opts.VariableNames = ["DraftYear", "position", "heightfeet", "heightinches", "heightinchestotal", "weight", "arms", "hands", "fortyyd", "twentyyd", "tenyd", "twentyss", "threecone", "vertical", "broad", "bench1", "nflgrade", "college", "VarName19"];
opts.VariableTypes = ["double", "categorical", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "string", "double"];
opts = setvaropts(opts, 18, "WhitespaceRule", "preserve");
opts = setvaropts(opts, [2, 18], "EmptyFieldRule", "auto");
opts.ExtraColumnsRule = "ignore";
opts.EmptyLineRule = "read";

% Import the data
tbl = readtable(filename, opts);

%% Convert to output type
DraftYear = tbl.DraftYear;
position = tbl.position;
heightfeet = tbl.heightfeet;
heightinches = tbl.heightinches;
heightinchestotal = tbl.heightinchestotal;
weight = tbl.weight;
arms = tbl.arms;
hands = tbl.hands;
fortyyd = tbl.fortyyd;
twentyyd = tbl.twentyyd;
tenyd = tbl.tenyd;
twentyss = tbl.twentyss;
threecone = tbl.threecone;
vertical = tbl.vertical;
broad = tbl.broad;
bench1 = tbl.bench1;
nflgrade = tbl.nflgrade;
college = tbl.college;
VarName19 = tbl.VarName19;
end