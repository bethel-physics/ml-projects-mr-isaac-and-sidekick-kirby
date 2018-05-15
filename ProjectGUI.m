

function varargout = ProjectGUI(varargin)
% PROJECTGUI MATLAB code for ProjectGUI.fig
%      PROJECTGUI, by itself, creates a new PROJECTGUI or raises the existing
%      singleton*.
%
%      H = PROJECTGUI returns the handle to a new PROJECTGUI or the handle to
%      the existing singleton*.
%
%      PROJECTGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PROJECTGUI.M with the given input arguments.
%
%      PROJECTGUI('Property','Value',...) creates a new PROJECTGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ProjectGUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ProjectGUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ProjectGUI

% Last Modified by GUIDE v2.5 11-May-2018 14:20:51

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ProjectGUI_OpeningFcn, ...
                   'gui_OutputFcn',  @ProjectGUI_OutputFcn, ...
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


% --- Executes just before ProjectGUI is made visible.
function ProjectGUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ProjectGUI (see VARARGIN)

% Choose default command line output for ProjectGUI
handles.output = hObject;
clc
movegui('center')
set(handles.Predator1,'Value',0);
set(handles.Predator2,'Value',0);
set(handles.Predator3,'Value',0);
set(handles.Prey1,'Value',0);
set(handles.Prey2,'Value',0);
set(handles.Prey3,'Value',0);
set(handles.run,'Value',0);

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ProjectGUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ProjectGUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in Predator1.
function Predator1_Callback(hObject, eventdata, handles)
global gamma
global d
set(handles.Predator1,'Value',1);
set(handles.Predator2,'Value',0);
set(handles.Predator3,'Value',0);

gamma = 1.5; 
d = .5;
x = gamma/d;
set(handles.Text6, 'String', x);
axes(handles.axes1)
imshow('dragon.jpg')

% hObject    handle to Predator1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in Predator2.
function Predator2_Callback(hObject, eventdata, handles)
global gamma
global d
set(handles.Predator1,'Value',0);
set(handles.Predator2,'Value',1);
set(handles.Predator3,'Value',0);
% hObject    handle to Predator2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
gamma = 1.1;
d = .9;
x = gamma/d;
set(handles.Text6, 'String', x);
axes(handles.axes1)
imshow('gorillaelephantcentaur.jpg')

% --- Executes on button press in Predator3.
function Predator3_Callback(hObject, eventdata, handles)
global gamma
global d
set(handles.Predator1,'Value',0);
set(handles.Predator2,'Value',0);
set(handles.Predator3,'Value',1);
% hObject    handle to Predator3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
gamma = .1;
d = 1.9;
x = gamma/d;
set(handles.Text6, 'String', x);
axes(handles.axes1)
imshow('studentdebt.jpeg')

% --- Executes on button press in Prey3.
function Prey3_Callback(hObject, eventdata, handles)
global a
global b
set(handles.Prey1,'Value',0);
set(handles.Prey2,'Value',0);
set(handles.Prey3,'Value',1);
% set(handles.run,'Value',0);
% hObject    handle to Prey3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

a = 2/3;
b = 4/3;
y = a/b;
set(handles.Text10, 'String', y);
axes(handles.axes2)
imshow('collegestudents.jpg')


% --- Executes on button press in Prey2.
function Prey2_Callback(hObject, eventdata, handles)
global a
global b
set(handles.Prey1,'Value',0);
set(handles.Prey2,'Value',1);
set(handles.Prey3,'Value',0);
% set(handles.run,'Value',0);
% hObject    handle to Prey2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a = 1;
b = 1;
y = a/b;
set(handles.Text10, 'String', y);
axes(handles.axes2)
imshow('pugbunny.jpg')

% --- Executes on button press in Prey1.
function Prey1_Callback(hObject, eventdata, handles)
global a
global b
set(handles.Prey1,'Value',1);
set(handles.Prey2,'Value',0);
set(handles.Prey3,'Value',0);
a = 4/3;
b = 2/3;
y = a/b;
set(handles.Text10, 'String', y);
axes(handles.axes2)
imshow('porg.jpg')
% hObject    handle to Prey1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in run.
function run_Callback(hObject, eventdata, handles)
global a
global b
global gamma
global d
set(handles.run,'Value',1);
x = str2double(get(handles.edit1, 'String'));
y = str2double(get(handles.edit2, 'String'));
systempp(a, b, d, gamma,x,y);
% hObject    handle to run (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
