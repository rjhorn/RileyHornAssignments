function varargout = gradeCalculator(varargin)
% GRADECALCULATOR MATLAB code for gradeCalculator.fig
%      GRADECALCULATOR, by itself, creates a new GRADECALCULATOR or raises the existing
%      singleton*.
%
%      H = GRADECALCULATOR returns the handle to a new GRADECALCULATOR or the handle to
%      the existing singleton*.
%
%      GRADECALCULATOR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GRADECALCULATOR.M with the given input arguments.
%
%      GRADECALCULATOR('Property','Value',...) creates a new GRADECALCULATOR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before gradeCalculator_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to gradeCalculator_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help gradeCalculator

% Last Modified by GUIDE v2.5 21-Nov-2019 13:01:31

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gradeCalculator_OpeningFcn, ...
                   'gui_OutputFcn',  @gradeCalculator_OutputFcn, ...
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


% --- Executes just before gradeCalculator is made visible.
function gradeCalculator_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to gradeCalculator (see VARARGIN)

handles.textGrade1 = 0;
handles.textGrade2 = 0;
handles.textGrade3 = 0;
handles.textGrade4 = 0;
handles.textGrade5 = 0;

% Choose default command line output for gradeCalculator
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);


% UIWAIT makes gradeCalculator wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = gradeCalculator_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function textGrade1_Callback(hObject, eventdata, handles)
% hObject    handle to textGrade1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

handles.textGrade1 = str2double(get(hObject,'String'));

% Update handles structure
guidata(hObject, handles);

% Hints: get(hObject,'String') returns contents of textGrade1 as text
%        str2double(get(hObject,'String')) returns contents of textGrade1 as a double


% --- Executes during object creation, after setting all properties.
function textGrade1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGrade1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGrade2_Callback(hObject, eventdata, handles)
% hObject    handle to textGrade2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

handles.textGrade2 = str2double(get(hObject,'String'));

% Update handles structure
guidata(hObject, handles);

% Hints: get(hObject,'String') returns contents of textGrade2 as text
%        str2double(get(hObject,'String')) returns contents of textGrade2 as a double


% --- Executes during object creation, after setting all properties.
function textGrade2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGrade2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGrade3_Callback(hObject, eventdata, handles)
% hObject    handle to textGrade3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

handles.textGrade3 = str2double(get(hObject,'String'));

% Update handles structure
guidata(hObject, handles);

% Hints: get(hObject,'String') returns contents of textGrade3 as text
%        str2double(get(hObject,'String')) returns contents of textGrade3 as a double


% --- Executes during object creation, after setting all properties.
function textGrade3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGrade3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGrade4_Callback(hObject, eventdata, handles)
% hObject    handle to textGrade4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.textGrade4 = str2double(get(hObject,'String'));

% Update handles structure
guidata(hObject, handles);
% Hints: get(hObject,'String') returns contents of textGrade4 as text
%        str2double(get(hObject,'String')) returns contents of textGrade4 as a double


% --- Executes during object creation, after setting all properties.
function textGrade4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGrade4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textGrade5_Callback(hObject, eventdata, handles)
% hObject    handle to textGrade5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.textGrade5 = str2double(get(hObject,'String'));

% Update handles structure
guidata(hObject, handles);
% Hints: get(hObject,'String') returns contents of textGrade5 as text
%        str2double(get(hObject,'String')) returns contents of textGrade5 as a double


% --- Executes during object creation, after setting all properties.
function textGrade5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textGrade5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function pushForGrades_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pushForGrades (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in pushForGrades.
function pushForGrades_Callback(hObject, eventdata, handles)
% hObject    handle to pushForGrades (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% handles.gradeVector = [handles.textGrade1, handles.textGrade2, handles.textGrade3, ...
%     handles.textGrade4, handles.textGrade5];

handles.gradeAverage = ((handles.textGrade1 + handles.textGrade2 + ...
    handles.textGrade3 + handles.textGrade4 + handles.textGrade5) / 5);

%handles.numberGradeString = [num2str(mean(handles.gradeVector)), '%'];

%Change to only one decimal
handles.gradeAverage = (handles.gradeAverage * 10);
handles.gradeAverage = floor(handles.gradeAverage);
handles.gradeAverage = (handles.gradeAverage / 10);

if (handles.gradeAverage > 100)
    set(handles.textNumberGrade, 'FontSize', 32);
else
    set(handles.textNumberGrade, 'FontSize', 42);
end

if (handles.gradeAverage > 90)
    handles.letterGrade = 'A';
elseif (handles.gradeAverage > 80)
    handles.letterGrade = 'B';
elseif (handles.gradeAverage > 70)
    handles.letterGrade = 'C';
elseif (handles.gradeAverage > 60)
    handles.letterGrade = 'D';
else 
    handles.letterGrade = 'F';
end

handles.gradeAverageText = [num2str(handles.gradeAverage), '%'];

% Change static texts
set(handles.textNumberGrade, 'String', handles.gradeAverageText);
set(handles.textLetterGrade,'String', handles.letterGrade);

% handles.textLetterGrade.String = letterGrade;
% handles.textNumberGrade.String = numberGrade;

% Update handles structure
guidata(hObject, handles);
