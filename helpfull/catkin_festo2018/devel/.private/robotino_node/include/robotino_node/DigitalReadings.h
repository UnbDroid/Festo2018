// Generated by gencpp from file robotino_node/DigitalReadings.msg
// DO NOT EDIT!


#ifndef ROBOTINO_NODE_MESSAGE_DIGITALREADINGS_H
#define ROBOTINO_NODE_MESSAGE_DIGITALREADINGS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace robotino_node
{
template <class ContainerAllocator>
struct DigitalReadings_
{
  typedef DigitalReadings_<ContainerAllocator> Type;

  DigitalReadings_()
    : stamp()
    , values()  {
    }
  DigitalReadings_(const ContainerAllocator& _alloc)
    : stamp()
    , values(_alloc)  {
  (void)_alloc;
    }



   typedef ros::Time _stamp_type;
  _stamp_type stamp;

   typedef std::vector<uint8_t, typename ContainerAllocator::template rebind<uint8_t>::other >  _values_type;
  _values_type values;





  typedef boost::shared_ptr< ::robotino_node::DigitalReadings_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robotino_node::DigitalReadings_<ContainerAllocator> const> ConstPtr;

}; // struct DigitalReadings_

typedef ::robotino_node::DigitalReadings_<std::allocator<void> > DigitalReadings;

typedef boost::shared_ptr< ::robotino_node::DigitalReadings > DigitalReadingsPtr;
typedef boost::shared_ptr< ::robotino_node::DigitalReadings const> DigitalReadingsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robotino_node::DigitalReadings_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robotino_node::DigitalReadings_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace robotino_node

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'robotino_node': ['/home/takashi/Desktop/catkin_festo2018/src/robotino_node/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::robotino_node::DigitalReadings_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robotino_node::DigitalReadings_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robotino_node::DigitalReadings_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robotino_node::DigitalReadings_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robotino_node::DigitalReadings_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robotino_node::DigitalReadings_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robotino_node::DigitalReadings_<ContainerAllocator> >
{
  static const char* value()
  {
    return "21240637a82d18c261b7e2f567659e7e";
  }

  static const char* value(const ::robotino_node::DigitalReadings_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x21240637a82d18c2ULL;
  static const uint64_t static_value2 = 0x61b7e2f567659e7eULL;
};

template<class ContainerAllocator>
struct DataType< ::robotino_node::DigitalReadings_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robotino_node/DigitalReadings";
  }

  static const char* value(const ::robotino_node::DigitalReadings_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robotino_node::DigitalReadings_<ContainerAllocator> >
{
  static const char* value()
  {
    return "time stamp\n\
bool[] values\n\
";
  }

  static const char* value(const ::robotino_node::DigitalReadings_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robotino_node::DigitalReadings_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.stamp);
      stream.next(m.values);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DigitalReadings_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robotino_node::DigitalReadings_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robotino_node::DigitalReadings_<ContainerAllocator>& v)
  {
    s << indent << "stamp: ";
    Printer<ros::Time>::stream(s, indent + "  ", v.stamp);
    s << indent << "values[]" << std::endl;
    for (size_t i = 0; i < v.values.size(); ++i)
    {
      s << indent << "  values[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.values[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOTINO_NODE_MESSAGE_DIGITALREADINGS_H
