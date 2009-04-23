/*

Copyright 2008-2009 Thomas Paviot (thomas.paviot@free.fr)

This file is part of pythonOCC.

pythonOCC is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

pythonOCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

*/
%module XCAFPrs

%include typemaps.i
%include cmalloc.i
%include cpointer.i
%include carrays.i
%include exception.i
%include std_list.i
%include std_string.i
%include <python/std_basic_string.i>

#ifndef _Standard_TypeDef_HeaderFile
#define _Standard_TypeDef_HeaderFile
#define Standard_False (Standard_Boolean) 0
#define Standard_True  (Standard_Boolean) 1
#endif

/*
Exception handling
*/
%{#include <Standard_Failure.hxx>%}
%exception
{
    try
    {
        $action
    } 
    catch(Standard_Failure)
    {
        SWIG_exception(SWIG_RuntimeError,Standard_Failure::Caught()->DynamicType()->Name());
    }
}

/*
Standard_Real & function transformation
*/
%typemap(argout) Standard_Real &OutValue {
    PyObject *o, *o2, *o3;
    o = PyFloat_FromDouble(*$1);
    if ((!$result) || ($result == Py_None)) {
        $result = o;
    } else {
        if (!PyTuple_Check($result)) {
            PyObject *o2 = $result;
            $result = PyTuple_New(1);
            PyTuple_SetItem($result,0,o2);
        }
        o3 = PyTuple_New(1);
        PyTuple_SetItem(o3,0,o);
        o2 = $result;
        $result = PySequence_Concat(o2,o3);
        Py_DECREF(o2);
        Py_DECREF(o3);
    }
}

%typemap(in,numinputs=0) Standard_Real &OutValue(Standard_Real temp) {
    $1 = &temp;
}

/*
Standard_Integer & function transformation
*/
%typemap(argout) Standard_Integer &OutValue {
    PyObject *o, *o2, *o3;
    o = PyInt_FromLong(*$1);
    if ((!$result) || ($result == Py_None)) {
        $result = o;
    } else {
        if (!PyTuple_Check($result)) {
            PyObject *o2 = $result;
            $result = PyTuple_New(1);
            PyTuple_SetItem($result,0,o2);
        }
        o3 = PyTuple_New(1);
        PyTuple_SetItem(o3,0,o);
        o2 = $result;
        $result = PySequence_Concat(o2,o3);
        Py_DECREF(o2);
        Py_DECREF(o3);
    }
}

%typemap(in,numinputs=0) Standard_Integer &OutValue(Standard_Integer temp) {
    $1 = &temp;
}


%include XCAFPrs_dependencies.i


%include XCAFPrs_headers.i




%nodefaultctor Handle_XCAFPrs_AISObject;
class Handle_XCAFPrs_AISObject : public Handle_AIS_Shape {
	public:
		%feature("autodoc", "1");
		Handle_XCAFPrs_AISObject();
		%feature("autodoc", "1");
		Handle_XCAFPrs_AISObject(const Handle_XCAFPrs_AISObject &aHandle);
		%feature("autodoc", "1");
		Handle_XCAFPrs_AISObject(const XCAFPrs_AISObject *anItem);
		%feature("autodoc", "1");
		Handle_XCAFPrs_AISObject const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XCAFPrs_AISObject {
	XCAFPrs_AISObject* GetObject() {
	return (XCAFPrs_AISObject*)$self->Access();
	}
};
%extend Handle_XCAFPrs_AISObject {
	~Handle_XCAFPrs_AISObject() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_XCAFPrs_AISObject\n");}
	}
};


%nodefaultctor Handle_XCAFPrs_DataMapNodeOfDataMapOfShapeStyle;
class Handle_XCAFPrs_DataMapNodeOfDataMapOfShapeStyle : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_XCAFPrs_DataMapNodeOfDataMapOfShapeStyle();
		%feature("autodoc", "1");
		Handle_XCAFPrs_DataMapNodeOfDataMapOfShapeStyle(const Handle_XCAFPrs_DataMapNodeOfDataMapOfShapeStyle &aHandle);
		%feature("autodoc", "1");
		Handle_XCAFPrs_DataMapNodeOfDataMapOfShapeStyle(const XCAFPrs_DataMapNodeOfDataMapOfShapeStyle *anItem);
		%feature("autodoc", "1");
		Handle_XCAFPrs_DataMapNodeOfDataMapOfShapeStyle const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XCAFPrs_DataMapNodeOfDataMapOfShapeStyle {
	XCAFPrs_DataMapNodeOfDataMapOfShapeStyle* GetObject() {
	return (XCAFPrs_DataMapNodeOfDataMapOfShapeStyle*)$self->Access();
	}
};
%extend Handle_XCAFPrs_DataMapNodeOfDataMapOfShapeStyle {
	~Handle_XCAFPrs_DataMapNodeOfDataMapOfShapeStyle() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_XCAFPrs_DataMapNodeOfDataMapOfShapeStyle\n");}
	}
};


%nodefaultctor Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleTransient;
class Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleTransient : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleTransient();
		%feature("autodoc", "1");
		Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleTransient(const Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleTransient &aHandle);
		%feature("autodoc", "1");
		Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleTransient(const XCAFPrs_DataMapNodeOfDataMapOfStyleTransient *anItem);
		%feature("autodoc", "1");
		Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleTransient const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleTransient {
	XCAFPrs_DataMapNodeOfDataMapOfStyleTransient* GetObject() {
	return (XCAFPrs_DataMapNodeOfDataMapOfStyleTransient*)$self->Access();
	}
};
%extend Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleTransient {
	~Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleTransient() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleTransient\n");}
	}
};


%nodefaultctor Handle_XCAFPrs_Driver;
class Handle_XCAFPrs_Driver : public Handle_TPrsStd_Driver {
	public:
		%feature("autodoc", "1");
		Handle_XCAFPrs_Driver();
		%feature("autodoc", "1");
		Handle_XCAFPrs_Driver(const Handle_XCAFPrs_Driver &aHandle);
		%feature("autodoc", "1");
		Handle_XCAFPrs_Driver(const XCAFPrs_Driver *anItem);
		%feature("autodoc", "1");
		Handle_XCAFPrs_Driver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XCAFPrs_Driver {
	XCAFPrs_Driver* GetObject() {
	return (XCAFPrs_Driver*)$self->Access();
	}
};
%extend Handle_XCAFPrs_Driver {
	~Handle_XCAFPrs_Driver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_XCAFPrs_Driver\n");}
	}
};


%nodefaultctor Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleShape;
class Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleShape : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleShape();
		%feature("autodoc", "1");
		Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleShape(const Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleShape &aHandle);
		%feature("autodoc", "1");
		Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleShape(const XCAFPrs_DataMapNodeOfDataMapOfStyleShape *anItem);
		%feature("autodoc", "1");
		Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleShape const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleShape {
	XCAFPrs_DataMapNodeOfDataMapOfStyleShape* GetObject() {
	return (XCAFPrs_DataMapNodeOfDataMapOfStyleShape*)$self->Access();
	}
};
%extend Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleShape {
	~Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleShape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleShape\n");}
	}
};


%nodefaultctor XCAFPrs_DataMapOfStyleShape;
class XCAFPrs_DataMapOfStyleShape : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		XCAFPrs_DataMapOfStyleShape(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		XCAFPrs_DataMapOfStyleShape & Assign(const XCAFPrs_DataMapOfStyleShape &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const XCAFPrs_Style &K, const TopoDS_Shape &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const XCAFPrs_Style &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const XCAFPrs_Style &K);
		%feature("autodoc", "1");
		const TopoDS_Shape & Find(const XCAFPrs_Style &K) const;
		%feature("autodoc", "1");
		const TopoDS_Shape & operator()(const XCAFPrs_Style &K) const;
		%feature("autodoc", "1");
		TopoDS_Shape & ChangeFind(const XCAFPrs_Style &K);
		%feature("autodoc", "1");
		TopoDS_Shape & operator()(const XCAFPrs_Style &K);

};
%extend XCAFPrs_DataMapOfStyleShape {
	~XCAFPrs_DataMapOfStyleShape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of XCAFPrs_DataMapOfStyleShape\n");}
	}
};


%nodefaultctor XCAFPrs_AISObject;
class XCAFPrs_AISObject : public AIS_Shape {
	public:
		%feature("autodoc", "1");
		XCAFPrs_AISObject(const TDF_Label &lab);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XCAFPrs_AISObject {
	Handle_XCAFPrs_AISObject GetHandle() {
	return *(Handle_XCAFPrs_AISObject*) &$self;
	}
};
%extend XCAFPrs_AISObject {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend XCAFPrs_AISObject {
	~XCAFPrs_AISObject() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of XCAFPrs_AISObject\n");}
	}
};


%nodefaultctor XCAFPrs;
class XCAFPrs {
	public:
		%feature("autodoc", "1");
		XCAFPrs();
		%feature("autodoc", "1");
		void CollectStyleSettings(const TDF_Label &L, const TopLoc_Location &loc, XCAFPrs_DataMapOfShapeStyle & settings);
		%feature("autodoc", "1");
		Standard_Boolean DispatchStyles(const TopoDS_Shape &shape, const XCAFPrs_DataMapOfShapeStyle &settings, XCAFPrs_DataMapOfStyleShape & items, const XCAFPrs_Style &DefStyle, const Standard_Boolean force=1, const TopAbs_ShapeEnum context=TopAbs_SHAPE);
		%feature("autodoc", "1");
		void SetViewNameMode(const Standard_Boolean viewNameMode);
		%feature("autodoc", "1");
		Standard_Boolean GetViewNameMode();

};
%extend XCAFPrs {
	~XCAFPrs() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of XCAFPrs\n");}
	}
};


%nodefaultctor XCAFPrs_DataMapOfShapeStyle;
class XCAFPrs_DataMapOfShapeStyle : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		XCAFPrs_DataMapOfShapeStyle(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		XCAFPrs_DataMapOfShapeStyle & Assign(const XCAFPrs_DataMapOfShapeStyle &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TopoDS_Shape &K, const XCAFPrs_Style &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TopoDS_Shape &K);
		%feature("autodoc", "1");
		const XCAFPrs_Style & Find(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const XCAFPrs_Style & operator()(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		XCAFPrs_Style & ChangeFind(const TopoDS_Shape &K);
		%feature("autodoc", "1");
		XCAFPrs_Style & operator()(const TopoDS_Shape &K);

};
%extend XCAFPrs_DataMapOfShapeStyle {
	~XCAFPrs_DataMapOfShapeStyle() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of XCAFPrs_DataMapOfShapeStyle\n");}
	}
};


%nodefaultctor XCAFPrs_DataMapIteratorOfDataMapOfStyleTransient;
class XCAFPrs_DataMapIteratorOfDataMapOfStyleTransient : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		XCAFPrs_DataMapIteratorOfDataMapOfStyleTransient();
		%feature("autodoc", "1");
		XCAFPrs_DataMapIteratorOfDataMapOfStyleTransient(const XCAFPrs_DataMapOfStyleTransient &aMap);
		%feature("autodoc", "1");
		void Initialize(const XCAFPrs_DataMapOfStyleTransient &aMap);
		%feature("autodoc", "1");
		const XCAFPrs_Style & Key() const;
		%feature("autodoc", "1");
		const Handle_Standard_Transient & Value() const;

};
%extend XCAFPrs_DataMapIteratorOfDataMapOfStyleTransient {
	~XCAFPrs_DataMapIteratorOfDataMapOfStyleTransient() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of XCAFPrs_DataMapIteratorOfDataMapOfStyleTransient\n");}
	}
};


%nodefaultctor XCAFPrs_DataMapNodeOfDataMapOfStyleTransient;
class XCAFPrs_DataMapNodeOfDataMapOfStyleTransient : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		XCAFPrs_DataMapNodeOfDataMapOfStyleTransient(const XCAFPrs_Style &K, const Handle_Standard_Transient &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		XCAFPrs_Style & Key() const;
		%feature("autodoc", "1");
		Handle_Standard_Transient & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XCAFPrs_DataMapNodeOfDataMapOfStyleTransient {
	Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleTransient GetHandle() {
	return *(Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleTransient*) &$self;
	}
};
%extend XCAFPrs_DataMapNodeOfDataMapOfStyleTransient {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend XCAFPrs_DataMapNodeOfDataMapOfStyleTransient {
	~XCAFPrs_DataMapNodeOfDataMapOfStyleTransient() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of XCAFPrs_DataMapNodeOfDataMapOfStyleTransient\n");}
	}
};


%nodefaultctor XCAFPrs_DataMapOfStyleTransient;
class XCAFPrs_DataMapOfStyleTransient : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		XCAFPrs_DataMapOfStyleTransient(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		XCAFPrs_DataMapOfStyleTransient & Assign(const XCAFPrs_DataMapOfStyleTransient &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const XCAFPrs_Style &K, const Handle_Standard_Transient &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const XCAFPrs_Style &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const XCAFPrs_Style &K);
		%feature("autodoc", "1");
		const Handle_Standard_Transient & Find(const XCAFPrs_Style &K) const;
		%feature("autodoc", "1");
		const Handle_Standard_Transient & operator()(const XCAFPrs_Style &K) const;
		%feature("autodoc", "1");
		Handle_Standard_Transient & ChangeFind(const XCAFPrs_Style &K);
		%feature("autodoc", "1");
		Handle_Standard_Transient & operator()(const XCAFPrs_Style &K);

};
%extend XCAFPrs_DataMapOfStyleTransient {
	~XCAFPrs_DataMapOfStyleTransient() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of XCAFPrs_DataMapOfStyleTransient\n");}
	}
};


%nodefaultctor XCAFPrs_DataMapNodeOfDataMapOfStyleShape;
class XCAFPrs_DataMapNodeOfDataMapOfStyleShape : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		XCAFPrs_DataMapNodeOfDataMapOfStyleShape(const XCAFPrs_Style &K, const TopoDS_Shape &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		XCAFPrs_Style & Key() const;
		%feature("autodoc", "1");
		TopoDS_Shape & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XCAFPrs_DataMapNodeOfDataMapOfStyleShape {
	Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleShape GetHandle() {
	return *(Handle_XCAFPrs_DataMapNodeOfDataMapOfStyleShape*) &$self;
	}
};
%extend XCAFPrs_DataMapNodeOfDataMapOfStyleShape {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend XCAFPrs_DataMapNodeOfDataMapOfStyleShape {
	~XCAFPrs_DataMapNodeOfDataMapOfStyleShape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of XCAFPrs_DataMapNodeOfDataMapOfStyleShape\n");}
	}
};


%nodefaultctor XCAFPrs_Driver;
class XCAFPrs_Driver : public TPrsStd_Driver {
	public:
		%feature("autodoc", "1");
		XCAFPrs_Driver();
		%feature("autodoc", "1");
		virtual		Standard_Boolean Update(const TDF_Label &L, Handle_AIS_InteractiveObject & ais);
		%feature("autodoc", "1");
		const Standard_GUID & GetID();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XCAFPrs_Driver {
	Handle_XCAFPrs_Driver GetHandle() {
	return *(Handle_XCAFPrs_Driver*) &$self;
	}
};
%extend XCAFPrs_Driver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend XCAFPrs_Driver {
	~XCAFPrs_Driver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of XCAFPrs_Driver\n");}
	}
};


%nodefaultctor XCAFPrs_Style;
class XCAFPrs_Style {
	public:
		%feature("autodoc", "1");
		XCAFPrs_Style();
		%feature("autodoc", "1");
		Standard_Boolean IsSetColorSurf() const;
		%feature("autodoc", "1");
		Quantity_Color GetColorSurf() const;
		%feature("autodoc", "1");
		void SetColorSurf(const Quantity_Color &col);
		%feature("autodoc", "1");
		void UnSetColorSurf();
		%feature("autodoc", "1");
		Standard_Boolean IsSetColorCurv() const;
		%feature("autodoc", "1");
		Quantity_Color GetColorCurv() const;
		%feature("autodoc", "1");
		void SetColorCurv(const Quantity_Color &col);
		%feature("autodoc", "1");
		void UnSetColorCurv();
		%feature("autodoc", "1");
		void SetVisibility(const Standard_Boolean visibility);
		%feature("autodoc", "1");
		Standard_Boolean IsVisible() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const XCAFPrs_Style &other) const;
		%feature("autodoc", "1");
		Standard_Boolean operator==(const XCAFPrs_Style &other) const;
		%feature("autodoc", "1");
		Standard_Integer HashCode(const XCAFPrs_Style &S, const Standard_Integer Upper);
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const XCAFPrs_Style &S1, const XCAFPrs_Style &S2);

};
%extend XCAFPrs_Style {
	~XCAFPrs_Style() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of XCAFPrs_Style\n");}
	}
};


%nodefaultctor XCAFPrs_DataMapIteratorOfDataMapOfShapeStyle;
class XCAFPrs_DataMapIteratorOfDataMapOfShapeStyle : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		XCAFPrs_DataMapIteratorOfDataMapOfShapeStyle();
		%feature("autodoc", "1");
		XCAFPrs_DataMapIteratorOfDataMapOfShapeStyle(const XCAFPrs_DataMapOfShapeStyle &aMap);
		%feature("autodoc", "1");
		void Initialize(const XCAFPrs_DataMapOfShapeStyle &aMap);
		%feature("autodoc", "1");
		const TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		const XCAFPrs_Style & Value() const;

};
%extend XCAFPrs_DataMapIteratorOfDataMapOfShapeStyle {
	~XCAFPrs_DataMapIteratorOfDataMapOfShapeStyle() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of XCAFPrs_DataMapIteratorOfDataMapOfShapeStyle\n");}
	}
};


%nodefaultctor XCAFPrs_DataMapIteratorOfDataMapOfStyleShape;
class XCAFPrs_DataMapIteratorOfDataMapOfStyleShape : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		XCAFPrs_DataMapIteratorOfDataMapOfStyleShape();
		%feature("autodoc", "1");
		XCAFPrs_DataMapIteratorOfDataMapOfStyleShape(const XCAFPrs_DataMapOfStyleShape &aMap);
		%feature("autodoc", "1");
		void Initialize(const XCAFPrs_DataMapOfStyleShape &aMap);
		%feature("autodoc", "1");
		const XCAFPrs_Style & Key() const;
		%feature("autodoc", "1");
		const TopoDS_Shape & Value() const;

};
%extend XCAFPrs_DataMapIteratorOfDataMapOfStyleShape {
	~XCAFPrs_DataMapIteratorOfDataMapOfStyleShape() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of XCAFPrs_DataMapIteratorOfDataMapOfStyleShape\n");}
	}
};


%nodefaultctor XCAFPrs_DataMapNodeOfDataMapOfShapeStyle;
class XCAFPrs_DataMapNodeOfDataMapOfShapeStyle : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		XCAFPrs_DataMapNodeOfDataMapOfShapeStyle(const TopoDS_Shape &K, const XCAFPrs_Style &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		XCAFPrs_Style & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XCAFPrs_DataMapNodeOfDataMapOfShapeStyle {
	Handle_XCAFPrs_DataMapNodeOfDataMapOfShapeStyle GetHandle() {
	return *(Handle_XCAFPrs_DataMapNodeOfDataMapOfShapeStyle*) &$self;
	}
};
%extend XCAFPrs_DataMapNodeOfDataMapOfShapeStyle {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend XCAFPrs_DataMapNodeOfDataMapOfShapeStyle {
	~XCAFPrs_DataMapNodeOfDataMapOfShapeStyle() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of XCAFPrs_DataMapNodeOfDataMapOfShapeStyle\n");}
	}
};