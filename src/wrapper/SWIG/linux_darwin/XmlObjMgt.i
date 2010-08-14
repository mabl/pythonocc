/*

Copyright 2008-2009 Thomas Paviot (tpaviot@gmail.com)

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
%module XmlObjMgt
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%pythoncode {
import GarbageCollector
};

%include XmlObjMgt_dependencies.i


%include XmlObjMgt_headers.i

typedef LDOMString XmlObjMgt_DOMString;
typedef LDOM_Document XmlObjMgt_Document;
typedef TColStd_IndexedMapOfTransient XmlObjMgt_SRelocationTable;
typedef LDOM_Element XmlObjMgt_Element;



%nodefaultctor Handle_XmlObjMgt_DataMapNodeOfRRelocationTable;
class Handle_XmlObjMgt_DataMapNodeOfRRelocationTable : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_XmlObjMgt_DataMapNodeOfRRelocationTable();
		%feature("autodoc", "1");
		Handle_XmlObjMgt_DataMapNodeOfRRelocationTable(const Handle_XmlObjMgt_DataMapNodeOfRRelocationTable &aHandle);
		%feature("autodoc", "1");
		Handle_XmlObjMgt_DataMapNodeOfRRelocationTable(const XmlObjMgt_DataMapNodeOfRRelocationTable *anItem);
		%feature("autodoc", "1");
		Handle_XmlObjMgt_DataMapNodeOfRRelocationTable & operator=(const Handle_XmlObjMgt_DataMapNodeOfRRelocationTable &aHandle);
		%feature("autodoc", "1");
		Handle_XmlObjMgt_DataMapNodeOfRRelocationTable & operator=(const XmlObjMgt_DataMapNodeOfRRelocationTable *anItem);
		%feature("autodoc", "1");
		static		Handle_XmlObjMgt_DataMapNodeOfRRelocationTable const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_XmlObjMgt_DataMapNodeOfRRelocationTable {
	XmlObjMgt_DataMapNodeOfRRelocationTable* GetObject() {
	return (XmlObjMgt_DataMapNodeOfRRelocationTable*)$self->Access();
	}
};
%feature("shadow") Handle_XmlObjMgt_DataMapNodeOfRRelocationTable::~Handle_XmlObjMgt_DataMapNodeOfRRelocationTable %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_XmlObjMgt_DataMapNodeOfRRelocationTable {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XmlObjMgt_DataMapIteratorOfRRelocationTable;
class XmlObjMgt_DataMapIteratorOfRRelocationTable : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		XmlObjMgt_DataMapIteratorOfRRelocationTable();
		%feature("autodoc", "1");
		XmlObjMgt_DataMapIteratorOfRRelocationTable(const XmlObjMgt_RRelocationTable &aMap);
		%feature("autodoc", "1");
		void Initialize(const XmlObjMgt_RRelocationTable &aMap);
		%feature("autodoc", "1");
		const Standard_Integer & Key() const;
		%feature("autodoc", "1");
		const Handle_Standard_Transient & Value() const;

};
%feature("shadow") XmlObjMgt_DataMapIteratorOfRRelocationTable::~XmlObjMgt_DataMapIteratorOfRRelocationTable %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XmlObjMgt_DataMapIteratorOfRRelocationTable {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XmlObjMgt;
class XmlObjMgt {
	public:
		%feature("autodoc", "1");
		XmlObjMgt();
		%feature("autodoc", "1");
		static		const XmlObjMgt_DOMString & IdString();
		%feature("autodoc", "1");
		static		Standard_Boolean SetExtendedString(XmlObjMgt_Element & theElement, const TCollection_ExtendedString &theString);
		%feature("autodoc", "1");
		static		Standard_Boolean GetExtendedString(const XmlObjMgt_Element &theElement, TCollection_ExtendedString & theString);
		%feature("autodoc", "1");
		static		XmlObjMgt_DOMString GetStringValue(const XmlObjMgt_Element &theElement);
		%feature("autodoc", "1");
		static		void SetStringValue(XmlObjMgt_Element & theElement, const XmlObjMgt_DOMString &theData, const Standard_Boolean isClearText=0);
		%feature("autodoc", "1");
		static		Standard_Boolean GetTagEntryString(const XmlObjMgt_DOMString &theTarget, TCollection_AsciiString & theTagEntry);
		%feature("autodoc", "1");
		static		void SetTagEntryString(XmlObjMgt_DOMString & theSource, const TCollection_AsciiString &theTagEntry);
		%feature("autodoc", "1");
		static		XmlObjMgt_Element FindChildElement(const XmlObjMgt_Element &theSource, const Standard_Integer theObjId);
		%feature("autodoc", "1");
		static		XmlObjMgt_Element FindChildByRef(const XmlObjMgt_Element &theSource, const XmlObjMgt_DOMString &theRefName);
		%feature("autodoc", "1");
		static		XmlObjMgt_Element FindChildByName(const XmlObjMgt_Element &theSource, const XmlObjMgt_DOMString &theName);
		%feature("autodoc","GetReal() -> Standard_Real");

		static		Standard_Boolean GetReal(char * & theString, Standard_Real &OutValue);
		%feature("autodoc","GetReal(const theString) -> Standard_Real");

		static		Standard_Boolean GetReal(const XmlObjMgt_DOMString &theString, Standard_Real &OutValue);

};
%feature("shadow") XmlObjMgt::~XmlObjMgt %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XmlObjMgt {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XmlObjMgt_DataMapNodeOfRRelocationTable;
class XmlObjMgt_DataMapNodeOfRRelocationTable : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		XmlObjMgt_DataMapNodeOfRRelocationTable(const Standard_Integer &K, const Handle_Standard_Transient &I, const TCollection_MapNodePtr &n);
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetKey() {
				return (Standard_Integer) $self->Key();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetKey(Standard_Integer value ) {
				$self->Key()=value;
				}
		};
		%feature("autodoc", "1");
		Handle_Standard_Transient & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend XmlObjMgt_DataMapNodeOfRRelocationTable {
	Handle_XmlObjMgt_DataMapNodeOfRRelocationTable GetHandle() {
	return *(Handle_XmlObjMgt_DataMapNodeOfRRelocationTable*) &$self;
	}
};
%extend XmlObjMgt_DataMapNodeOfRRelocationTable {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") XmlObjMgt_DataMapNodeOfRRelocationTable::~XmlObjMgt_DataMapNodeOfRRelocationTable %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XmlObjMgt_DataMapNodeOfRRelocationTable {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XmlObjMgt_GP;
class XmlObjMgt_GP {
	public:
		%feature("autodoc", "1");
		XmlObjMgt_GP();
		%feature("autodoc", "1");
		static		XmlObjMgt_DOMString Translate(const gp_Trsf &aTrsf);
		%feature("autodoc", "1");
		static		XmlObjMgt_DOMString Translate(const gp_Mat &aMat);
		%feature("autodoc", "1");
		static		XmlObjMgt_DOMString Translate(const gp_XYZ &anXYZ);
		%feature("autodoc", "1");
		static		Standard_Boolean Translate(const XmlObjMgt_DOMString &aStr, gp_Trsf & T);
		%feature("autodoc", "1");
		static		Standard_Boolean Translate(const XmlObjMgt_DOMString &aStr, gp_Mat & T);
		%feature("autodoc", "1");
		static		Standard_Boolean Translate(const XmlObjMgt_DOMString &aStr, gp_XYZ & T);

};
%feature("shadow") XmlObjMgt_GP::~XmlObjMgt_GP %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XmlObjMgt_GP {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XmlObjMgt_Persistent;
class XmlObjMgt_Persistent {
	public:
		%feature("autodoc", "1");
		XmlObjMgt_Persistent();
		%feature("autodoc", "1");
		XmlObjMgt_Persistent(const XmlObjMgt_Element &theElement);
		%feature("autodoc", "1");
		XmlObjMgt_Persistent(const XmlObjMgt_Element &theElement, const XmlObjMgt_DOMString &theRef);
		%feature("autodoc", "1");
		void CreateElement(XmlObjMgt_Element & theParent, const XmlObjMgt_DOMString &theType, const Standard_Integer theID);
		%feature("autodoc", "1");
		void SetId(const Standard_Integer theId);
		%feature("autodoc", "1");
		const XmlObjMgt_Element & Element() const;
		%feature("autodoc", "1");
		XmlObjMgt_Element & Element();
		%feature("autodoc", "1");
		Standard_Integer Id() const;

};
%feature("shadow") XmlObjMgt_Persistent::~XmlObjMgt_Persistent %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XmlObjMgt_Persistent {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor XmlObjMgt_RRelocationTable;
class XmlObjMgt_RRelocationTable : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		XmlObjMgt_RRelocationTable(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		XmlObjMgt_RRelocationTable & Assign(const XmlObjMgt_RRelocationTable &Other);
		%feature("autodoc", "1");
		XmlObjMgt_RRelocationTable & operator=(const XmlObjMgt_RRelocationTable &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Standard_Integer &K, const Handle_Standard_Transient &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Standard_Integer &K);
		%feature("autodoc", "1");
		const Handle_Standard_Transient & Find(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const Handle_Standard_Transient & operator()(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Handle_Standard_Transient & ChangeFind(const Standard_Integer &K);
		%feature("autodoc", "1");
		Handle_Standard_Transient & operator()(const Standard_Integer &K);

};
%feature("shadow") XmlObjMgt_RRelocationTable::~XmlObjMgt_RRelocationTable %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend XmlObjMgt_RRelocationTable {
	void _kill_pointed() {
		delete $self;
	}
};
