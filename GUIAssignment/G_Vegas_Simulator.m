function varargout = G_Vegas_Simulator(varargin)
% G_VEGAS_SIMULATOR MATLAB code for G_Vegas_Simulator.fig
%      G_VEGAS_SIMULATOR, by itself, creates a new G_VEGAS_SIMULATOR or raises the existing
%      singleton*.
%
%      H = G_VEGAS_SIMULATOR returns the handle to a new G_VEGAS_SIMULATOR or the handle to
%      the existing singleton*.
%
%      G_VEGAS_SIMULATOR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in G_VEGAS_SIMULATOR.M with the given input arguments.
%
%      G_VEGAS_SIMULATOR('Property','Value',...) creates a new G_VEGAS_SIMULATOR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before G_Vegas_Simulator_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to G_Vegas_Simulator_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help G_Vegas_Simulator

% Last Modified by GUIDE v2.5 12-Nov-2019 11:43:10

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @G_Vegas_Simulator_OpeningFcn, ...
                   'gui_OutputFcn',  @G_Vegas_Simulator_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before G_Vegas_Simulator is made visible.
function G_Vegas_Simulator_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to G_Vegas_Simulator (see VARARGIN)

handles.die1 = 0;
handles.die2 = 0;

handles.dieTotal = 0;

handles.numRolls = 0;

handles.dieTotalHistory = zeros(1,11);

handles.possibleDieTotal = 2:12;

%Pre-set axes
bar(handles.possibleDieTotal,handles.dieTotalHistory);

% Choose default command line output for G_Vegas_Simulator
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes G_Vegas_Simulator wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = G_Vegas_Simulator_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in roll_pushbutton.
function roll_pushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to roll_pushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Randomly select number between 1 and 6 for die1 and die2
handles.die1 = randi([1 6]);
handles.die2 = randi([1 6]);
% Add die values to get total for roll
handles.dieTotal = handles.die1 + handles.die2;
% Increase number of rolls by 1
handles.numRolls = handles.numRolls + 1;
% Add result to dieTotalHistory
handles.dieTotalHistory(handles.dieTotal - 1) = (handles.dieTotalHistory(handles.dieTotal - 1) + 1);
% Change static texts
set(handles.die1value_text,'String',num2str(handles.die1));
set(handles.die2value_text,'String',num2str(handles.die2));
set(handles.dieTotal_text,'String',num2str(handles.dieTotal));
set(handles.numRolls_text,'String',num2str(handles.numRolls));
% Update Plot of Roll Results
bar(handles.possibleDieTotal,handles.dieTotalHistory);
% Update handles structure
guidata(hObject, handles);