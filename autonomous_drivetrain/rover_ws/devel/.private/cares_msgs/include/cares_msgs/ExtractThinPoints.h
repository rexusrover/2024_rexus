// Generated by gencpp from file cares_msgs/ExtractThinPoints.msg
// DO NOT EDIT!


#ifndef CARES_MSGS_MESSAGE_EXTRACTTHINPOINTS_H
#define CARES_MSGS_MESSAGE_EXTRACTTHINPOINTS_H

#include <ros/service_traits.h>


#include <cares_msgs/ExtractThinPointsRequest.h>
#include <cares_msgs/ExtractThinPointsResponse.h>


namespace cares_msgs
{

struct ExtractThinPoints
{

typedef ExtractThinPointsRequest Request;
typedef ExtractThinPointsResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct ExtractThinPoints
} // namespace cares_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::cares_msgs::ExtractThinPoints > {
  static const char* value()
  {
    return "429375f5dc6bdc8c055d8ba8b52deac1";
  }

  static const char* value(const ::cares_msgs::ExtractThinPoints&) { return value(); }
};

template<>
struct DataType< ::cares_msgs::ExtractThinPoints > {
  static const char* value()
  {
    return "cares_msgs/ExtractThinPoints";
  }

  static const char* value(const ::cares_msgs::ExtractThinPoints&) { return value(); }
};


// service_traits::MD5Sum< ::cares_msgs::ExtractThinPointsRequest> should match
// service_traits::MD5Sum< ::cares_msgs::ExtractThinPoints >
template<>
struct MD5Sum< ::cares_msgs::ExtractThinPointsRequest>
{
  static const char* value()
  {
    return MD5Sum< ::cares_msgs::ExtractThinPoints >::value();
  }
  static const char* value(const ::cares_msgs::ExtractThinPointsRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::cares_msgs::ExtractThinPointsRequest> should match
// service_traits::DataType< ::cares_msgs::ExtractThinPoints >
template<>
struct DataType< ::cares_msgs::ExtractThinPointsRequest>
{
  static const char* value()
  {
    return DataType< ::cares_msgs::ExtractThinPoints >::value();
  }
  static const char* value(const ::cares_msgs::ExtractThinPointsRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::cares_msgs::ExtractThinPointsResponse> should match
// service_traits::MD5Sum< ::cares_msgs::ExtractThinPoints >
template<>
struct MD5Sum< ::cares_msgs::ExtractThinPointsResponse>
{
  static const char* value()
  {
    return MD5Sum< ::cares_msgs::ExtractThinPoints >::value();
  }
  static const char* value(const ::cares_msgs::ExtractThinPointsResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::cares_msgs::ExtractThinPointsResponse> should match
// service_traits::DataType< ::cares_msgs::ExtractThinPoints >
template<>
struct DataType< ::cares_msgs::ExtractThinPointsResponse>
{
  static const char* value()
  {
    return DataType< ::cares_msgs::ExtractThinPoints >::value();
  }
  static const char* value(const ::cares_msgs::ExtractThinPointsResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // CARES_MSGS_MESSAGE_EXTRACTTHINPOINTS_H
